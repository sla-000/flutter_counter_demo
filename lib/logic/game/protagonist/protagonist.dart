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

class Protagonist extends ActorMoving implements Updatable {
  Protagonist({
    required Vector position,
    double? angle,
    double? rotationSpeed,
  }) : super(
          position: position,
          angle: angle ?? 180,
          rotationSpeed: rotationSpeed ?? kRotationSpeed,
          size: Vector.square(size: 50),
        );

  RotatingState changingRotation = RotatingState.notChanging;

  @override
  Protagonist copyWith({
    required Vector position,
  }) =>
      Protagonist(
        position: position,
        angle: angle,
        rotationSpeed: (changingRotation != RotatingState.notChanging)
            ? (rotationSpeed > 0 ? kRotationSpeed : -kRotationSpeed)
            : rotationSpeed,
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
  String toString() => 'Hero{moving: ${super.toString()}}';
}
