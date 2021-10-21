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
import 'package:flutter_counter_shooter/logic/game/actor/actor_state.dart';
import 'package:flutter_counter_shooter/logic/game/actor/updatable.dart';
import 'package:flutter_counter_shooter/logic/game/bullet/bullet.dart';
import 'package:flutter_counter_shooter/logic/game/enemy/bomb.dart';
import 'package:flutter_counter_shooter/logic/game/math/vector.dart';
import 'package:flutter_counter_shooter/logic/game/protagonist/protagonist.dart';
import 'package:rxdart/rxdart.dart';

const double kDeleteDistance = 100;

// todo Make bloc
class SceneData implements Updatable {
  SceneData._({
    required this.width,
    required this.height,
  }) {
    _subscribe();
  }

  factory SceneData.init({
    required double width,
    required double height,
  }) {
    return SceneData._(
      width: width,
      height: height,
    )
      ..bombsBloc.init()
      ..bulletsBloc.init()
      ..protagonist = Protagonist(position: Vector(x: width / 2, y: height / 2));
  }

  SceneData copyWith({
    required double width,
    required double height,
  }) {
    final double xCoeff = width / this.width;
    final double yCoeff = height / this.height;

    return SceneData._(
      width: width,
      height: height,
    )
      ..bombsBloc.setAll(_convertBombs(xCoeff, yCoeff))
      ..bulletsBloc.setAll(_convertBullets(xCoeff, yCoeff))
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

  List<Bullet> _convertBullets(double xCoeff, double yCoeff) {
    return bulletsBloc.bullets
        .map(
          (Bullet bullet) => bullet.copyWith(
            position: Vector(
              x: bullet.position.x * xCoeff,
              y: bullet.position.y * yCoeff,
            ),
          ),
        )
        .toList();
  }

  List<Bomb> _convertBombs(double xCoeff, double yCoeff) {
    return bombsBloc.bombs
        .map(
          (Bomb bomb) => bomb.copyWith(
            position: Vector(
              x: bomb.position.x * xCoeff,
              y: bomb.position.y * yCoeff,
            ),
          ),
        )
        .toList();
  }

  @override
  void update(double delta) {
    protagonist.update(delta);
    _updateBullets(delta);
    _updateBombs(delta);
    _checkBulletsCollisions();
  }

  void _checkBulletsCollisions() {
    final List<Bullet> deleteBullets = <Bullet>[];
    final List<Bomb> deleteBombs = <Bomb>[];

    for (final Bullet bullet in bulletsBloc.bullets) {
      bool bulletHaveCollision = false;

      for (final Bomb bomb in bombsBloc.bombs) {
        if (_bulletIsClose(bullet, bomb)) {
          deleteBombs.add(bomb);
          bulletHaveCollision = true;
        }
      }

      if (bulletHaveCollision) {
        deleteBullets.add(bullet);
      }
    }

    for (final ActorState _ in deleteBullets) {
      di.get<GameScoreBloc>().add(const GameScoreEvent.kill());
    }

    deleteBullets.forEach(bulletsBloc.remove);

    deleteBombs.forEach(bombsBloc.remove);
  }

  bool _bulletIsClose(ActorMoving bullet, ActorMoving bomb) {
    return bullet.position.distance(bomb.position) < 20;
  }

  void _updateBullets(double delta) {
    bulletsBloc.update(delta);

    final List<Bullet> deleteBullets = <Bullet>[];

    for (final Bullet bullet in bulletsBloc.bullets) {
      _checkBoundsAddToDeleteList(deleteBullets, bullet);
    }

    deleteBullets.forEach(bulletsBloc.remove);
  }

  void _updateBombs(double delta) {
    bombsBloc.update(delta);

    final List<Bomb> deleteBombs = <Bomb>[];

    for (final Bomb bomb in bombsBloc.bombs) {
      _checkBoundsAddToDeleteList(deleteBombs, bomb);
    }

    deleteBombs.forEach(bombsBloc.remove);
  }

  void _checkBoundsAddToDeleteList(List<ActorState> deleteList, ActorState actor) {
    if (actor.position.x < -kDeleteDistance || actor.position.x > width + kDeleteDistance) {
      deleteList.add(actor);
      return;
    }

    if (actor.position.y < -kDeleteDistance || actor.position.y > height + kDeleteDistance) {
      deleteList.add(actor);
      return;
    }
  }

  void buttonPressed() {
    di.get<GameScoreBloc>().add(const GameScoreEvent.shoot());

    if (di.get<GameScoreBloc>().state.gameStarted) {
      protagonist.shoot();

      bulletsBloc.add(
        Bullet(
          position: Vector.copy(protagonist.position),
          angle: protagonist.angle,
          rotationSpeed: _getBulletRotationSpeed(),
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

  Vector _generateBombPosition() => _getBombPosition(width, height, Random.secure().nextDouble());

  Vector _getBombPosition(double width, double height, double value) {
    final double perimeter = (width + height) * 2;
    final double enteringPoint = perimeter * value;

    if (enteringPoint < width) {
      return Vector(x: enteringPoint, y: 0);
    } else if (enteringPoint < width + height) {
      return Vector(x: width, y: enteringPoint - width);
    } else if (enteringPoint < width * 2 + height) {
      return Vector(x: enteringPoint - (width + height), y: height);
    } else {
      return Vector(x: 0, y: enteringPoint - (width * 2 + height));
    }
  }

  double _getBulletRotationSpeed() {
    final double absSpeed = pow(protagonist.rotationSpeed.abs(), 2.3).toDouble();
    return protagonist.rotationSpeed > 0 ? -absSpeed : absSpeed;
  }
}
