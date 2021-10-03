import 'dart:math';

import 'package:flutter_counter_shooter/di/di.dart';
import 'package:flutter_counter_shooter/logic/blocs/game_score/bloc.dart';
import 'package:flutter_counter_shooter/logic/blocs/game_score/event.dart';
import 'package:flutter_counter_shooter/logic/blocs/game_started_bloc.dart';
import 'package:flutter_counter_shooter/logic/game/actor/actor_moving.dart';
import 'package:flutter_counter_shooter/logic/game/actor/actor_state.dart';
import 'package:flutter_counter_shooter/logic/game/actor/updatable.dart';
import 'package:flutter_counter_shooter/logic/game/bullet/bullet.dart';
import 'package:flutter_counter_shooter/logic/game/hero/hero.dart';
import 'package:flutter_counter_shooter/logic/game/math/vector.dart';

const double kDeleteDistance = 100;

class SceneData implements Updatable {
  SceneData._({
    required this.width,
    required this.height,
    required this.hero,
    required this.bullets,
    required this.enemies,
  });

  factory SceneData.init({
    required double width,
    required double height,
  }) {
    return SceneData._(
      width: width,
      height: height,
      hero: Hero.init(position: Vector(x: width / 2, y: height / 2)),
      bullets: <Bullet>[],
      enemies: <ActorMoving>[],
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
      hero: hero.copyWith(position: Vector(x: width / 2, y: height / 2)),
      bullets: _getBullets(xCoeff, yCoeff),
      enemies: enemies,
    );
  }

  final double height;
  final double width;

  final Hero hero;

  final List<Bullet> bullets;

  final List<ActorMoving> enemies;

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

  @override
  void update(double delta) {
    hero.update(delta);

    final List<ActorState> bulletsToDelete = <ActorState>[];
    for (final Bullet bullet in bullets) {
      bullet.update(delta);
      _checkDelete(bulletsToDelete, bullet);
    }
    bulletsToDelete.forEach(bullets.remove);

    enemies.forEach((ActorMoving enemy) => enemy.update(delta));
  }

  void _checkDelete(List<ActorState> deleteList, ActorState actor) {
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
    if (di.get<GameStartedBloc>().value) {
      hero.shoot();
      bullets.add(Bullet.init(
        position: Vector.copy(hero.position),
        angle: hero.angle,
        rotationSpeed: _getBulletRotationSpeed(),
      ));
    } else {
      di.get<GameScoreBloc>().add(const GameScoreEvent.add(1));
    }
  }

  double _getBulletRotationSpeed() {
    final double absSpeed = pow(hero.rotationSpeed.abs(), 2.3).toDouble();
    return hero.rotationSpeed > 0 ? -absSpeed : absSpeed;
  }
}
