import 'dart:async';
import 'dart:developer';
import 'dart:math' as math;

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_counter_shooter/logic/blocs/bombs/bloc.dart';
import 'package:flutter_counter_shooter/logic/blocs/bombs/event.dart';
import 'package:flutter_counter_shooter/logic/blocs/bullets/bloc.dart';
import 'package:flutter_counter_shooter/logic/blocs/bullets/event.dart';
import 'package:flutter_counter_shooter/logic/blocs/protagonist/bloc.dart';
import 'package:flutter_counter_shooter/logic/blocs/protagonist/event.dart';
import 'package:flutter_counter_shooter/logic/blocs/scene/repo.dart';
import 'package:flutter_counter_shooter/logic/game/actor/actor_moving.dart';
import 'package:flutter_counter_shooter/logic/game/bullet/bullet.dart';
import 'package:flutter_counter_shooter/logic/game/enemy/bomb.dart';
import 'package:flutter_counter_shooter/logic/game/math/vector.dart';
import 'package:flutter_counter_shooter/logic/game/protagonist/protagonist.dart';
import 'package:meta/meta.dart';

import 'event.dart';
import 'state.dart';
import 'utils/bombs.dart';
import 'utils/bullets.dart';
import 'utils/distance.dart';

class SceneBloc extends Bloc<SceneEvent, SceneState> {
  SceneBloc({
    required this.protagonistBloc,
    required this.bulletsBloc,
    required this.bombsBloc,
    required this.sceneSpawnRepo,
    required this.sceneWavesRepo,
    required this.gameScoreRepo,
    required this.sceneFrameRepo,
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
  late final StreamSubscription<void> _bombSpawnSubscription;

  @protected
  final ProtagonistBloc protagonistBloc;

  @protected
  final BulletsBloc bulletsBloc;

  @protected
  final BombsBloc bombsBloc;

  final SceneSpawnRepo sceneSpawnRepo;
  final SceneWavesRepo sceneWavesRepo;
  final SceneScoreRepo gameScoreRepo;
  final SceneFrameRepo sceneFrameRepo;

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
        .where(
          (bool started) => started,
        )
        .listen((_) {
      sceneWavesRepo.reset();
      sceneSpawnRepo.reset();
    });

    _bombSpawnSubscription = sceneSpawnRepo.bombSpawnStream().listen((_) {
      _addBomb();
    });
  }

  void _processCollisions() {
    final int hits = checkAllCollisions(
      protagonist: protagonistBloc.state.protagonist,
      bullets: bulletsBloc.state.bullets,
      bombs: bombsBloc.state.bombs,
      onBombRemove: (List<Bomb> bombs) {
        bombsBloc.add(BombsEvent.removeAll(bombs));
      },
      onBulletRemove: (List<Bullet> bullets) {
        bulletsBloc.add(BulletsEvent.removeAll(bullets));
      },
      onProtagonistHit: (Bomb bomb) {
        log('dead');
        gameScoreRepo.dead();
        // bombsBloc.add(const BombsEvent.init());
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
        math.Random.secure().nextDouble(),
      );
}
