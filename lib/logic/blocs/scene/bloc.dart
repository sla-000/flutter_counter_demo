import 'dart:async';
import 'dart:math' as math;

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_counter_shooter/di/di.dart';
import 'package:flutter_counter_shooter/logic/blocs/bombs/bloc.dart';
import 'package:flutter_counter_shooter/logic/blocs/bombs/event.dart';
import 'package:flutter_counter_shooter/logic/blocs/bullets/bloc.dart';
import 'package:flutter_counter_shooter/logic/blocs/bullets/event.dart';
import 'package:flutter_counter_shooter/logic/blocs/protagonist/bloc.dart';
import 'package:flutter_counter_shooter/logic/blocs/protagonist/event.dart';
import 'package:flutter_counter_shooter/logic/blocs/scene/event.dart';
import 'package:flutter_counter_shooter/logic/blocs/scene/repo.dart';
import 'package:flutter_counter_shooter/logic/blocs/scene/state.dart';
import 'package:flutter_counter_shooter/logic/blocs/scene/utils/bombs.dart';
import 'package:flutter_counter_shooter/logic/blocs/scene/utils/bullets.dart';
import 'package:flutter_counter_shooter/logic/blocs/scene/utils/distance.dart';
import 'package:flutter_counter_shooter/logic/blocs/spawn/bloc.dart';
import 'package:flutter_counter_shooter/logic/blocs/spawn/event.dart';
import 'package:flutter_counter_shooter/logic/blocs/waves/bloc.dart';
import 'package:flutter_counter_shooter/logic/blocs/waves/event.dart';
import 'package:flutter_counter_shooter/logic/game/actor/actor_moving.dart';
import 'package:flutter_counter_shooter/logic/game/bullet/bullet.dart';
import 'package:flutter_counter_shooter/logic/game/enemy/bomb.dart';
import 'package:flutter_counter_shooter/logic/game/math/vector.dart';
import 'package:flutter_counter_shooter/logic/service/sound_service.dart';

class SceneBloc extends Bloc<SceneEvent, SceneState> {
  SceneBloc({
    required this.sceneSpawnRepo,
    required this.sceneWavesRepo,
    required this.gameScoreRepo,
  }) : super(SceneState(size: Vector.one())) {
    on<SceneEventInit>(_onInit);
    on<SceneEventResize>(_onResize);
    on<SceneEventTapButton>(_onTapButton);
    on<SceneEventUpdate>(_onUpdate);

    _subscribe();
  }

  late final StreamSubscription<void> _gameStartedSubscription;
  late final StreamSubscription<void> _bombSpawnSubscription;

  final SceneSpawnRepo sceneSpawnRepo;
  final SceneWavesRepo sceneWavesRepo;
  final SceneScoreRepo gameScoreRepo;

  @override
  Future<void> close() async {
    await Future.wait([
      _bombSpawnSubscription.cancel(),
      _gameStartedSubscription.cancel(),
    ]);

    return super.close();
  }

  void _onInit(SceneEventInit event, Emitter<SceneState> emit) {
    di<ProtagonistBloc>().add(
      ProtagonistEvent.init(Vector(x: event.size.x / 2, y: event.size.y / 2)),
    );

    di<BulletsBloc>().add(const BulletsEvent.init());

    di<BombsBloc>().add(const BombsEvent.init());

    di<SpawnBloc>().add(const SpawnEvent.init());
    di<WavesBloc>().add(const WavesEvent.init());

    emit(state.copyWith(size: event.size));
  }

  void _onResize(SceneEventResize event, Emitter<SceneState> emit) {
    final xCoeff = event.size.x / state.size.x;
    final yCoeff = event.size.y / state.size.y;

    di<ProtagonistBloc>().add(
      ProtagonistEvent.init(Vector(x: event.size.x / 2, y: event.size.y / 2)),
    );

    di<BulletsBloc>().add(
      BulletsEvent.setAll(
        convertBullets(di<BulletsBloc>().state.bullets, xCoeff, yCoeff),
      ),
    );

    di<BombsBloc>().add(
      BombsEvent.setAll(
        convertBombs(di<BombsBloc>().state.bombs, xCoeff, yCoeff),
      ),
    );

    // di<BombsBloc>().add(const BombsEvent.init()); // todo

    emit(state.copyWith(size: event.size));
  }

  void _onTapButton(SceneEventTapButton event, Emitter<SceneState> emit) {
    gameScoreRepo.shoot();

    if (gameScoreRepo.isStarted) {
      di.get<SoundService>().playShoot();

      di<ProtagonistBloc>().add(const ProtagonistEvent.shoot());

      final protagonist = di<ProtagonistBloc>().state.protagonist;

      di<BulletsBloc>().add(
        BulletsEvent.add(
          Bullet(
            position: Vector.copy(
              protagonist.position.add(
                Vector.fromAngle(angle: protagonist.angle, length: 20),
              ),
            ),
            angle: protagonist.angle,
            rotationSpeed: getBulletRotationSpeed(protagonist.rotationSpeed),
          ),
        ),
      );
    }
  }

  void _onUpdate(SceneEventUpdate event, Emitter<SceneState> emit) {
    di<ProtagonistBloc>().add(ProtagonistEvent.update(event.delta));

    di<BulletsBloc>().add(BulletsEvent.update(event.delta));

    di<BombsBloc>().add(BombsEvent.update(event.delta));

    _checkBounds(di<BulletsBloc>().state.bullets, (List<ActorMoving> actors) {
      di<BulletsBloc>().add(BulletsEvent.removeAll(actors));
    });

    _checkBounds(di<BombsBloc>().state.bombs, (List<ActorMoving> actors) {
      di<BombsBloc>().add(BombsEvent.removeAll(actors));
    });

    _processCollisions();
  }

  void _subscribe() {
    _gameStartedSubscription = gameScoreRepo
        .isStartedStream()
        .where((bool started) => started)
        .listen((_) {
          sceneWavesRepo.reset();
          sceneSpawnRepo.reset();
        });

    _bombSpawnSubscription = sceneSpawnRepo.bombSpawnStream().listen((_) {
      _addBomb();
    });
  }

  void _processCollisions() {
    final hits = checkAllCollisions(
      protagonist: di<ProtagonistBloc>().state.protagonist,
      bullets: di<BulletsBloc>().state.bullets,
      bombs: di<BombsBloc>().state.bombs,
      onBombRemove: (List<Bomb> bombs) {
        di<BombsBloc>().add(BombsEvent.removeAll(bombs));

        if (bombs.isNotEmpty) {
          di.get<SoundService>().playExplosion();
        }
      },
      onBulletRemove: (List<Bullet> bullets) {
        di<BulletsBloc>().add(BulletsEvent.removeAll(bullets));
      },
      onProtagonistHit: (Bomb bomb) {
        gameScoreRepo.dead();
        di<BombsBloc>().add(const BombsEvent.init());

        di.get<SoundService>().playDead();
      },
    );

    for (var i = 0; i < hits; ++i) {
      gameScoreRepo.kill();
    }
  }

  void _checkBounds(
    List<ActorMoving> actors,
    void Function(List<ActorMoving> actors) onRemove,
  ) {
    final delItems = <ActorMoving>[];

    for (final actor in actors) {
      checkBoundsAddToDeleteList(delItems, actor, state.size.x, state.size.y);
    }

    onRemove(delItems);
  }

  void _addBomb() {
    if (!gameScoreRepo.isStarted) {
      return;
    }

    final bombPosition = _generateBombPosition();
    final toCenter = Vector(
      x: state.size.x / 2 - bombPosition.x,
      y: state.size.y / 2 - bombPosition.y,
    );

    final angleToCenter = toCenter.getAngle();

    final bomb = Bomb(
      position: bombPosition,
      angle: angleToCenter,
      linearSpeed: Vector.fromAngle(angle: angleToCenter, length: 20),
    );

    di<BombsBloc>().add(BombsEvent.add(bomb));
  }

  Vector _generateBombPosition() => getBombPosition(
    state.size.x,
    state.size.y,
    math.Random.secure().nextDouble(),
  );
}
