import 'dart:async';
import 'dart:math';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_counter_shooter/di/di.dart';
import 'package:flutter_counter_shooter/logic/blocs/bomb_spawn/bloc.dart';
import 'package:flutter_counter_shooter/logic/blocs/bomb_spawn/event.dart';
import 'package:flutter_counter_shooter/logic/blocs/bomb_spawn/state.dart';
import 'package:flutter_counter_shooter/logic/blocs/bombs/bloc.dart';
import 'package:flutter_counter_shooter/logic/blocs/bombs/event.dart';
import 'package:flutter_counter_shooter/logic/blocs/bullets/bloc.dart';
import 'package:flutter_counter_shooter/logic/blocs/bullets/event.dart';
import 'package:flutter_counter_shooter/logic/blocs/frame_update/bloc.dart';
import 'package:flutter_counter_shooter/logic/blocs/frame_update/event.dart';
import 'package:flutter_counter_shooter/logic/blocs/protagonist/bloc.dart';
import 'package:flutter_counter_shooter/logic/blocs/protagonist/event.dart';
import 'package:flutter_counter_shooter/logic/blocs/scene/repo.dart';
import 'package:flutter_counter_shooter/logic/blocs/waves/bloc.dart';
import 'package:flutter_counter_shooter/logic/blocs/waves/event.dart';
import 'package:flutter_counter_shooter/logic/game/actor/actor_moving.dart';
import 'package:flutter_counter_shooter/logic/game/bullet/bullet.dart';
import 'package:flutter_counter_shooter/logic/game/enemy/bomb.dart';
import 'package:flutter_counter_shooter/logic/game/math/vector.dart';
import 'package:flutter_counter_shooter/logic/game/protagonist/protagonist.dart';
import 'package:rxdart/rxdart.dart';

import 'bombs_utils.dart';
import 'bullets_utils.dart';
import 'distance_utils.dart';
import 'event.dart';
import 'state.dart';

class SceneBloc extends Bloc<SceneEvent, SceneState> {
  SceneBloc({
    required this.protagonistBloc,
    required this.bulletsBloc,
    required this.bombsBloc,
    required this.bombSpawnBloc,
    required this.wavesBloc,
    required this.gameScoreRepo,
  }) : super(SceneState(
          size: Vector.one(),
          protagonist: protagonistBloc.state.protagonist,
          bombs: bombsBloc.state.bombs,
          bullets: bulletsBloc.state.bullets,
        )) {
    on<SceneEventInit>(_onInit);
    on<SceneEventResize>(_onResize);
    on<SceneEventTapButton>(_onTapButton);
    on<SceneEventUpdate>(_onUpdate);

    _subscribe();
  }

  late final StreamSubscription<void> _gameStartedSubscription;
  late final StreamSubscription<BombSpawnState> _bombSpawnSubscription;

  final ProtagonistBloc protagonistBloc;

  final BulletsBloc bulletsBloc;

  final BombsBloc bombsBloc;

  final BombSpawnBloc bombSpawnBloc;
  final WavesBloc wavesBloc;

  final GameScoreRepo gameScoreRepo;

  @override
  Future<void> close() {
    _bombSpawnSubscription.cancel();
    _gameStartedSubscription.cancel();

    return super.close();
  }

  void _onInit(SceneEventInit event, Emitter<SceneState> emit) {
    protagonistBloc.add(ProtagonistEvent.init(
      Vector(
        x: event.size.x / 2,
        y: event.size.y / 2,
      ),
    ));

    bulletsBloc.add(const BulletsEvent.init());

    bombsBloc.add(const BombsEvent.init());

    emit(state.copyWith(
      size: event.size,
      protagonist: protagonistBloc.state.protagonist,
      bullets: bulletsBloc.state.bullets,
      bombs: bombsBloc.state.bombs,
    ));
  }

  void _onResize(SceneEventResize event, Emitter<SceneState> emit) {
    final double xCoeff = event.size.x / state.size.x;
    final double yCoeff = event.size.y / state.size.y;

    protagonistBloc.add(ProtagonistEvent.init(
      Vector(
        x: event.size.x / 2,
        y: event.size.y / 2,
      ),
    ));

    bulletsBloc.add(BulletsEvent.setAll(
      convertBullets(
        bulletsBloc.state.bullets,
        xCoeff,
        yCoeff,
      ),
    ));

    bombsBloc.add(BombsEvent.setAll(
      convertBombs(
        bombsBloc.state.bombs,
        xCoeff,
        yCoeff,
      ),
    ));

    bombsBloc.add(const BombsEvent.init());

    emit(state.copyWith(
      size: event.size,
      protagonist: protagonistBloc.state.protagonist,
      bullets: bulletsBloc.state.bullets,
      bombs: bombsBloc.state.bombs,
    ));
  }

  void _onTapButton(SceneEventTapButton event, Emitter<SceneState> emit) {
    gameScoreRepo.shoot();

    if (gameScoreRepo.isStarted) {
      protagonistBloc.add(const ProtagonistEvent.shoot());

      final Protagonist protagonist = protagonistBloc.state.protagonist;

      bulletsBloc.add(
        BulletsEvent.add(
          Bullet(
            position: Vector.copy(protagonist.position),
            angle: protagonist.angle,
            rotationSpeed: getBulletRotationSpeed(protagonist.rotationSpeed),
          ),
        ),
      );
    }

    emit(state.copyWith(
      protagonist: protagonistBloc.state.protagonist,
      bullets: bulletsBloc.state.bullets,
    ));
  }

  void _onUpdate(SceneEventUpdate event, Emitter<SceneState> emit) {
    protagonistBloc.add(ProtagonistEvent.update(event.delta));

    bulletsBloc.add(BulletsEvent.update(event.delta));

    bombsBloc.add(BombsEvent.update(event.delta));

    _checkBounds(bulletsBloc.state.bullets, (List<ActorMoving> actors) {
      bulletsBloc.add(BulletsEvent.removeAll(actors));
    });

    _checkBounds(bombsBloc.state.bombs, (List<ActorMoving> actors) {
      bombsBloc.add(BombsEvent.removeAll(actors));
    });

    _processCollisions();

    emit(state.copyWith(
      protagonist: protagonistBloc.state.protagonist,
      bullets: bulletsBloc.state.bullets,
      bombs: bombsBloc.state.bombs,
    ));
  }

  void _subscribe() {
    _gameStartedSubscription = gameScoreRepo
        .isStartedStream()
        .doOnData(
          (bool started) => di.get<FrameUpdateBloc>().add(FrameUpdateEvent.control(started)),
        )
        .where(
          (bool started) => started,
        )
        .listen((_) {
      wavesBloc.add(const WavesEvent.init());
      bombSpawnBloc.add(const BombSpawnEvent.init());
    });

    _bombSpawnSubscription = bombSpawnBloc.stream.listen((_) {
      _addBomb();
    });
  }

  void _processCollisions() {
    final int hits = checkCollisions(
      bullets: bulletsBloc.state.bullets,
      bombs: bombsBloc.state.bombs,
      onBombRemove: (List<Bomb> bombs) {
        bombsBloc.add(BombsEvent.removeAll(bombs));
      },
      onBulletRemove: (List<Bullet> bullets) {
        bulletsBloc.add(BulletsEvent.removeAll(bullets));
      },
    );

    for (int i = 0; i < hits; ++i) {
      gameScoreRepo.kill();
    }
  }

  void _checkBounds(List<ActorMoving> actors, void Function(List<ActorMoving> actors) onRemove) {
    final List<ActorMoving> delItems = <ActorMoving>[];

    for (final ActorMoving actor in actors) {
      checkBoundsAddToDeleteList(delItems, actor, state.size.x, state.size.y);
    }

    onRemove(delItems);
  }

  void _addBomb() {
    if (!gameScoreRepo.isStarted) {
      return;
    }

    final Vector bombPosition = _generateBombPosition();
    final Vector toCenter = Vector(
      x: state.size.x / 2 - bombPosition.x,
      y: state.size.y / 2 - bombPosition.y,
    );

    final double angleToCenter = toCenter.getAngle();

    final Bomb bomb = Bomb(
      position: bombPosition,
      angle: angleToCenter,
      linearSpeed: Vector.fromAngle(angle: angleToCenter, length: 20),
    );

    bombsBloc.add(BombsEvent.add(bomb));
  }

  Vector _generateBombPosition() => getBombPosition(
        state.size.x,
        state.size.y,
        Random.secure().nextDouble(),
      );
}
