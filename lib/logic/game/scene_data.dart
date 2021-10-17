import 'dart:math';

import 'package:flutter_counter_shooter/di/di.dart';
import 'package:flutter_counter_shooter/logic/blocs/bombs/bloc.dart';
import 'package:flutter_counter_shooter/logic/blocs/bombs/event.dart';
import 'package:flutter_counter_shooter/logic/blocs/game_score/bloc.dart';
import 'package:flutter_counter_shooter/logic/blocs/game_score/event.dart';
import 'package:flutter_counter_shooter/logic/game/actor/actor_moving.dart';
import 'package:flutter_counter_shooter/logic/game/actor/actor_state.dart';
import 'package:flutter_counter_shooter/logic/game/actor/updatable.dart';
import 'package:flutter_counter_shooter/logic/game/bullet/bullet.dart';
import 'package:flutter_counter_shooter/logic/game/enemy/bomb.dart';
import 'package:flutter_counter_shooter/logic/game/math/vector.dart';
import 'package:flutter_counter_shooter/logic/game/protagonist/protagonist.dart';

const double kDeleteDistance = 100;

// todo Make bloc
class SceneData implements Updatable {
  SceneData._({
    required this.width,
    required this.height,
    required this.protagonist,
    required this.bullets,
  });

  factory SceneData.init({
    required double width,
    required double height,
  }) {
    return SceneData._(
      width: width,
      height: height,
      protagonist: Protagonist(position: Vector(x: width / 2, y: height / 2)),
      bullets: <Bullet>[],
    )..bombsBloc.add(const BombsEvent.init());
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
      protagonist: protagonist.copyWith(position: Vector(x: width / 2, y: height / 2)),
      bullets: _getBullets(xCoeff, yCoeff),
    )..bombsBloc.add(BombsEvent.setAll(_getBombs(xCoeff, yCoeff)));
  }

  final double height;
  final double width;

  final Protagonist protagonist;

  final List<Bullet> bullets;

  // todo Assign in Ctor
  final BombsBloc bombsBloc = di.get<BombsBloc>();

  List<Bullet> _getBullets(double xCoeff, double yCoeff) {
    return bullets
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

  List<Bomb> _getBombs(double xCoeff, double yCoeff) {
    return bombsBloc.state.bombs
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
    final List<ActorState> deleteBullets = <ActorState>[];
    final List<Bomb> deleteBombs = <Bomb>[];

    for (final ActorMoving bullet in bullets) {
      bool bulletHaveCollision = false;

      for (final Bomb bomb in bombsBloc.state.bombs) {
        if (_bulletIsClose(bullet, bomb)) {
          deleteBombs.add(bomb);
          bulletHaveCollision = true;
        }
      }

      if (bulletHaveCollision) {
        deleteBullets.add(bullet);
      }
    }

    if (deleteBullets.isNotEmpty) {
      di.get<GameScoreBloc>().add(GameScoreEvent.add(deleteBullets.length));
    }

    deleteBullets.forEach(bullets.remove);
    for (final Bomb bomb in deleteBombs) {
      bombsBloc.add(BombsEvent.remove(bomb));
    }
  }

  bool _bulletIsClose(ActorMoving bullet, ActorMoving bomb) {
    return bullet.position.distance(bomb.position) < 20;
  }

  void _updateBullets(double delta) {
    final List<ActorState> deleteBullets = <ActorState>[];

    for (final ActorMoving bullet in bullets) {
      bullet.update(delta);
      _checkAndAddToDeleteList(deleteBullets, bullet);
    }

    deleteBullets.forEach(bullets.remove);
  }

  void _updateBombs(double delta) {
    bombsBloc.add(BombsEvent.update(delta));

    _deleteBombs();
  }

  void _deleteBombs() {
    final List<Bomb> deleteBombs = <Bomb>[];

    for (final Bomb bomb in bombsBloc.state.bombs) {
      _checkAndAddToDeleteList(deleteBombs, bomb);
    }

    for (final Bomb bomb in deleteBombs) {
      bombsBloc.add(BombsEvent.remove(bomb));
    }
  }

  void _checkAndAddToDeleteList(List<ActorState> deleteList, ActorState actor) {
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
    if (di.get<GameScoreBloc>().state.gameStarted) {
      protagonist.shoot();

      // todo Move to protagonist.shoot()
      bullets.add(
        Bullet(
          position: Vector.copy(protagonist.position),
          angle: protagonist.angle,
          rotationSpeed: _getBulletRotationSpeed(),
        ),
      );
    } else {
      di.get<GameScoreBloc>().add(const GameScoreEvent.add(1));
    }

    addBomb();
  }

  void addBomb() {
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

    bombsBloc.add(BombsEvent.add(bomb));
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
