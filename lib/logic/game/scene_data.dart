import 'dart:math';

import 'package:flutter_counter_shooter/di/di.dart';
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

class SceneData implements Updatable {
  SceneData._({
    required this.width,
    required this.height,
    required this.protagonist,
    required this.bullets,
    required this.bombs,
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
      bombs: <Bomb>[],
    );
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
      bombs: _getBombs(xCoeff, yCoeff),
    );
  }

  final double height;
  final double width;

  final Protagonist protagonist;

  final List<Bullet> bullets;

  final List<Bomb> bombs;

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
    return bombs
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
  }

  void _updateBullets(double delta) {
    final List<ActorState> deleteList = <ActorState>[];

    for (final ActorMoving bullet in bullets) {
      bullet.update(delta);
      _addToDeleteList(deleteList, bullet);
    }

    deleteList.forEach(bullets.remove);
  }

  void _updateBombs(double delta) {
    final List<ActorState> deleteList = <ActorState>[];

    for (final ActorMoving bomb in bombs) {
      bomb.update(delta);
      _addToDeleteList(deleteList, bomb);
    }

    deleteList.forEach(bombs.remove);
  }

  void _addToDeleteList(List<ActorState> deleteList, ActorState actor) {
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

      bullets.add(
        Bullet(
          position: Vector.copy(protagonist.position),
          angle: protagonist.angle,
          rotationSpeed: _getBulletRotationSpeed(),
        ),
      );

      final Vector bombPosition = _generateBombPosition();
      final Vector toCenter = Vector(
        x: width / 2 - bombPosition.x,
        y: height / 2 - bombPosition.y,
      );

      final angleToCenter = toCenter.getAngle();
      print('!!!!!! bombPosition=$bombPosition, toCenter=$toCenter, angleToCenter=$angleToCenter');

      bombs.add(
        Bomb(
          position: bombPosition,
          angle: angleToCenter,
          linearSpeed: Vector.fromAngle(angle: angleToCenter, length: 20),
        ),
      );
    } else {
      di.get<GameScoreBloc>().add(const GameScoreEvent.add(1));
    }
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
