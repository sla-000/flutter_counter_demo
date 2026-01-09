import 'dart:math' as math;

import 'package:flutter_counter_shooter/logic/game/actor/actor_moving.dart';
import 'package:flutter_counter_shooter/logic/game/actor/actor_state.dart';
import 'package:flutter_counter_shooter/logic/game/actor/updatable.dart';
import 'package:flutter_counter_shooter/logic/game/math/vector.dart';

class Bomb extends ActorMoving implements Updatable {
  Bomb({
    required Vector position,
    required double angle,
    required Vector linearSpeed,
  }) : super(
         position: position,
         angle: angle,
         linearSpeed: linearSpeed,
         size: Vector.square(size: 50),
       );

  static const kDeathTime = 0.5;

  late final _rotateRight = math.Random(
    DateTime.now().microsecondsSinceEpoch,
  ).nextBool();

  void hit() {
    switch (lifecycle) {
      case ActorLifecycle.dead:
      case ActorLifecycle.dying:
        return;

      case ActorLifecycle.alive:
        lifecycle = ActorLifecycle.dying;
    }
  }

  @override
  void update(double delta) {
    super.update(delta);

    switch (lifecycle) {
      case ActorLifecycle.dead:
      case ActorLifecycle.alive:
        return;

      case ActorLifecycle.dying:
        angle += (_rotateRight ? 1 : -1) * delta * math.pi * 2 / kDeathTime;
        opacity -= delta / kDeathTime;
        if (opacity < 0) {
          opacity = 0;
          lifecycle = ActorLifecycle.dead;
        }
    }
  }

  @override
  Bomb copyWith({
    required Vector position,
  }) => Bomb(
    position: position,
    angle: angle,
    linearSpeed: linearSpeed,
  );

  @override
  String toString() => 'Bomb{moving: ${super.toString()}}';
}
