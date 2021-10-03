import 'dart:math';

import 'package:flutter_counter_shooter/logic/game/actor/actor_moving.dart';
import 'package:flutter_counter_shooter/logic/game/actor/updatable.dart';
import 'package:flutter_counter_shooter/logic/game/math/vector.dart';

class Bullet extends ActorMoving implements Updatable {
  Bullet({
    required Vector position,
    required double angle,
  }) : super(
          position: position,
          angle: angle,
          linearSpeed: Vector.fromAngle(angle: angle, length: 100),
          rotationSpeed: (Random.secure().nextDouble() * 2 - 1) * 10,
          size: Vector.square(size: 20),
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
