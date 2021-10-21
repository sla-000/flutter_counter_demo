import 'dart:async';
import 'dart:math';

import 'package:flutter_counter_shooter/di/di.dart';
import 'package:flutter_counter_shooter/logic/blocs/bomb_spawn/bloc.dart';
import 'package:flutter_counter_shooter/logic/blocs/bomb_spawn/event.dart';
import 'package:flutter_counter_shooter/logic/blocs/bomb_spawn/state.dart';
import 'package:flutter_counter_shooter/logic/blocs/bombs/bloc.dart';
import 'package:flutter_counter_shooter/logic/blocs/bullets/bloc.dart';
import 'package:flutter_counter_shooter/logic/blocs/frame_update/bloc.dart';
import 'package:flutter_counter_shooter/logic/blocs/frame_update/event.dart';
import 'package:flutter_counter_shooter/logic/blocs/game_score/bloc.dart';
import 'package:flutter_counter_shooter/logic/blocs/game_score/event.dart';
import 'package:flutter_counter_shooter/logic/blocs/game_score/state.dart';
import 'package:flutter_counter_shooter/logic/blocs/waves/bloc.dart';
import 'package:flutter_counter_shooter/logic/blocs/waves/event.dart';
import 'package:flutter_counter_shooter/logic/game/actor/actor_moving.dart';
import 'package:flutter_counter_shooter/logic/game/actor/updatable.dart';
import 'package:flutter_counter_shooter/logic/game/bullet/bullet.dart';
import 'package:flutter_counter_shooter/logic/game/enemy/bomb.dart';
import 'package:flutter_counter_shooter/logic/game/math/vector.dart';
import 'package:flutter_counter_shooter/logic/game/protagonist/protagonist.dart';
import 'package:rxdart/rxdart.dart';

import 'bombs_utils.dart';
import 'bullets_utils.dart';
import 'distance_utils.dart';

// todo Make bloc
class SceneBloc implements Updatable {
  SceneBloc._({
    required this.width,
    required this.height,
  }) {
    _subscribe();
  }

  factory SceneBloc.init({
    required double width,
    required double height,
  }) {
    return SceneBloc._(
      width: width,
      height: height,
    )
      ..bombsBloc.init()
      ..bulletsBloc.init()
      ..protagonist = Protagonist(position: Vector(x: width / 2, y: height / 2));
  }

  SceneBloc copyWith({
    required double width,
    required double height,
  }) {
    final double xCoeff = width / this.width;
    final double yCoeff = height / this.height;

    return SceneBloc._(
      width: width,
      height: height,
    )
      ..bombsBloc.setAll(convertBombs(bombsBloc.bombs, xCoeff, yCoeff))
      ..bulletsBloc.setAll(convertBullets(bulletsBloc.bullets, xCoeff, yCoeff))
      ..protagonist.copyWith(position: Vector(x: width / 2, y: height / 2));
  }

  late final StreamSubscription<void> _gameStartedSubscription;

  late final StreamSubscription<BombSpawnState> _bombSpawnSubscription;

  final double height;
  final double width;

  late Protagonist protagonist;

  final BulletsBloc bulletsBloc = di.get<BulletsBloc>();

  final BombsBloc bombsBloc = di.get<BombsBloc>();

  final BombSpawnBloc bombSpawnBloc = di.get<BombSpawnBloc>();
  final WavesBloc wavesBloc = di.get<WavesBloc>();

  void _subscribe() {
    _gameStartedSubscription = di
        .get<GameScoreBloc>()
        .stream
        .map(
          (GameScoreState event) => event.gameStarted,
        )
        .distinct()
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

  void close() {
    _bombSpawnSubscription.cancel();
    _gameStartedSubscription.cancel();
  }

  @override
  void update(double delta) {
    protagonist.update(delta);

    bulletsBloc.update(delta);

    bombsBloc.update(delta);

    _checkBounds(bulletsBloc.bullets, bulletsBloc.removeAll);
    _checkBounds(bombsBloc.bombs, bombsBloc.removeAll);

    _processCollisions();
  }

  void _processCollisions() {
    final int hits = checkCollisions(
      bullets: bulletsBloc.bullets,
      bombs: bombsBloc.bombs,
      onBombRemove: bombsBloc.removeAll,
      onBulletRemove: bulletsBloc.removeAll,
    );

    for (int i = 0; i < hits; ++i) {
      di.get<GameScoreBloc>().add(const GameScoreEvent.kill());
    }
  }

  void _checkBounds(List<ActorMoving> actors, void Function(List<ActorMoving> actors) onRemove) {
    final List<ActorMoving> delItems = <ActorMoving>[];

    for (final ActorMoving actor in actors) {
      checkBoundsAddToDeleteList(delItems, actor, width, height);
    }

    onRemove(delItems);
  }

  void buttonPressed() {
    di.get<GameScoreBloc>().add(const GameScoreEvent.shoot());

    if (di.get<GameScoreBloc>().state.gameStarted) {
      protagonist.shoot();

      bulletsBloc.add(
        Bullet(
          position: Vector.copy(protagonist.position),
          angle: protagonist.angle,
          rotationSpeed: getBulletRotationSpeed(protagonist.rotationSpeed),
        ),
      );
    }
  }

  void _addBomb() {
    if (!di.get<GameScoreBloc>().state.gameStarted) {
      return;
    }

    final Vector bombPosition = _generateBombPosition();
    final Vector toCenter = Vector(
      x: width / 2 - bombPosition.x,
      y: height / 2 - bombPosition.y,
    );

    final double angleToCenter = toCenter.getAngle();

    final Bomb bomb = Bomb(
      position: bombPosition,
      angle: angleToCenter,
      linearSpeed: Vector.fromAngle(angle: angleToCenter, length: 20),
    );

    bombsBloc.add(bomb);
  }

  Vector _generateBombPosition() => getBombPosition(width, height, Random.secure().nextDouble());
}
