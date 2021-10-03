import 'package:flutter_counter_shooter/logic/game/actor/actor_moving.dart';
import 'package:flutter_counter_shooter/logic/game/actor/updatable.dart';
import 'package:flutter_counter_shooter/logic/game/math/angle_conversion.dart';
import 'package:flutter_counter_shooter/logic/game/math/vector.dart';
import 'package:meta/meta.dart';

final double kRotationSpeed = deg2Rad(180);
final double kDeltaRotation = deg2Rad(720);

enum RotatingState {
  notChanging,
  changingToLeft,
  changingToRight,
}

class Hero extends ActorMoving implements Updatable {
  Hero._({
    required Vector position,
    required double angle,
    required double rotationSpeed,
    required Vector size,
  }) : super(
          position: position,
          angle: angle,
          rotationSpeed: rotationSpeed,
          size: size,
        );

  factory Hero.init({
    required Vector position,
  }) =>
      Hero._(
        position: position,
        angle: 0,
        rotationSpeed: kRotationSpeed,
        size: Vector.square(size: 70),
      );

  RotatingState changingRotation = RotatingState.notChanging;

  Hero copyWith({
    required Vector position,
  }) =>
      Hero._(
        position: position,
        angle: angle,
        rotationSpeed: (changingRotation != RotatingState.notChanging)
            ? (rotationSpeed > 0 ? kRotationSpeed : -kRotationSpeed)
            : rotationSpeed,
        size: size,
      );

  void shoot() {
    if (rotationSpeed > 0) {
      changingRotation = RotatingState.changingToLeft;
    } else {
      changingRotation = RotatingState.changingToRight;
    }
  }

  @override
  void update(double delta) {
    super.update(delta);

    if (changingRotation == RotatingState.changingToLeft) {
      rotationSpeed -= kDeltaRotation * delta;

      if (rotationSpeed < -kRotationSpeed) {
        rotationSpeed = -kRotationSpeed;
        changingRotation = RotatingState.notChanging;
      }
    } else if (changingRotation == RotatingState.changingToRight) {
      rotationSpeed += kDeltaRotation * delta;

      if (rotationSpeed > kRotationSpeed) {
        rotationSpeed = kRotationSpeed;
        changingRotation = RotatingState.notChanging;
      }
    }
  }

  @mustCallSuper
  @override
  String toString() {
    return 'Hero{moving: ${super.toString()}}';
  }
}
