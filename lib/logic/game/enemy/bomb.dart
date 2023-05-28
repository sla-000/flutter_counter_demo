import 'package:flutter_counter_shooter/logic/game/actor/actor_moving.dart';
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

  double animation = 0;

  @override
  Bomb copyWith({
    required Vector position,
  }) =>
      Bomb(
        position: position,
        angle: angle,
        linearSpeed: linearSpeed,
      );

  @override
  void update(double delta) {
    super.update(delta);

    _updateAnimation(delta);
  }

  void _updateAnimation(double delta) {
    var calcAnimation = animation;

    calcAnimation += delta * 1.2;
    while (calcAnimation > 1) {
      calcAnimation -= 1;
    }

    animation = calcAnimation;
  }

  @override
  String toString() => 'Bomb{moving: ${super.toString()}}';
}
