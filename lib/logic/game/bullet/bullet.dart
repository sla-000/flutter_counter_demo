import 'package:flutter_counter_shooter/logic/game/actor/actor_moving.dart';
import 'package:flutter_counter_shooter/logic/game/actor/updatable.dart';
import 'package:flutter_counter_shooter/logic/game/math/vector.dart';

class Bullet extends ActorMoving implements Updatable {
  Bullet({
    required Vector position,
    required double angle,
    required double rotationSpeed,
    Vector? linearSpeed,
    Vector? size,
  }) : super(
          position: position,
          angle: angle,
          rotationSpeed: rotationSpeed,
          linearSpeed:
              linearSpeed ?? Vector.fromAngle(angle: angle, length: 100),
          size: size ?? Vector.square(size: 20),
        );

  double animation = 0;

  @override
  Bullet copyWith({
    required Vector position,
  }) =>
      Bullet(
        position: position,
        angle: angle,
        linearSpeed: linearSpeed,
        rotationSpeed: rotationSpeed,
        size: size,
      );

  @override
  void update(double delta) {
    super.update(delta);

    _updateAnimation(delta);

    _updateSize(delta);
  }

  void _updateSize(double delta) {
    size.applyMultiply(1 + delta * 0.1);
  }

  void _updateAnimation(double delta) {
    var calcAnimation = animation;

    calcAnimation += delta * 2;
    while (calcAnimation > 1) {
      calcAnimation -= 1;
    }

    animation = calcAnimation;
  }

  @override
  String toString() => 'HeroBullet{moving: ${super.toString()}}';
}
