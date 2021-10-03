import 'dart:math' as math;

import 'package:flutter_counter_shooter/logic/game/actor/actor_moving.dart';
import 'package:flutter_counter_shooter/logic/game/actor/updatable.dart';
import 'package:flutter_counter_shooter/logic/game/math/angle_conversion.dart';
import 'package:flutter_counter_shooter/logic/game/math/vector.dart';
import 'package:meta/meta.dart';

class Enemy extends ActorMoving implements Updatable {
  Enemy({
    required Vector position,
  }) : super(
          position: position,
          angle: 0,
          linearSpeed: _vectorToCenter(position),
          size: Vector.square(size: 30),
        );

  // todo
  static Vector _vectorToCenter(Vector position) => Vector(x: 0, y: 20);

  @override
  void update(double delta) {
    super.update(delta);
  }

  @mustCallSuper
  @override
  String toString() {
    return 'Enemy{moving: ${super.toString()}}';
  }
}
