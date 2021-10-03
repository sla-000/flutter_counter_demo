import 'dart:math';

import 'package:flutter_counter_shooter/logic/game/actor/actor_moving.dart';
import 'package:flutter_counter_shooter/logic/game/actor/updatable.dart';
import 'package:flutter_counter_shooter/logic/game/math/vector.dart';

class Bullet extends ActorMoving implements Updatable {
  Bullet._({
    required Vector position,
    required double angle,
    required Vector linearSpeed,
    required double rotationSpeed,
    required Vector size,
  }) : super(
          position: position,
          angle: angle,
          linearSpeed: linearSpeed,
          rotationSpeed: rotationSpeed,
          size: size,
        );

  factory Bullet.init({
    required Vector position,
    required double angle,
  }) =>
      Bullet._(
        position: position,
        angle: angle,
        linearSpeed: Vector.fromAngle(angle: angle, length: 100),
        rotationSpeed: (Random.secure().nextDouble() * 2 - 1) * 10,
        size: Vector.square(size: 20),
      );

  Bullet copyWith({
    required Vector position,
  }) =>
      Bullet._(
        position: position,
        angle: angle,
        linearSpeed: linearSpeed,
        rotationSpeed: rotationSpeed,
        size: size,
      );

  @override
  void update(double delta) {
    super.update(delta);
  }

  @override
  String toString() {
    return 'HeroBullet{moving: ${super.toString()}}';
  }
}
