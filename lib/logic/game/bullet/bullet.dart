import 'package:flutter_counter_shooter/logic/game/actor/actor_moving.dart';
import 'package:flutter_counter_shooter/logic/game/actor/actor_state.dart';
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
  }) => Bullet(
    position: position,
    angle: angle,
    linearSpeed: linearSpeed,
    rotationSpeed: rotationSpeed,
    size: size,
  );

  static const kDeathTime = 0.2;

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
      case ActorLifecycle.alive:
        _updateAnimation(delta);
        _updateSize(delta);

      case ActorLifecycle.dying:
        opacity -= delta / kDeathTime;
        if (opacity < 0) {
          opacity = 0;
          lifecycle = ActorLifecycle.dead;
        }
        _updateSize(delta * 100);

      case ActorLifecycle.dead:
        break;
    }
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
  String toString() => 'Bullet{moving: ${super.toString()}}';
}
