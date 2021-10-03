import 'package:flutter_counter_shooter/logic/game/actor/actor_moving.dart';
import 'package:flutter_counter_shooter/logic/game/actor/updatable.dart';
import 'package:flutter_counter_shooter/logic/game/math/angle_conversion.dart';
import 'package:flutter_counter_shooter/logic/game/math/vector.dart';
import 'package:meta/meta.dart';

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
        rotationSpeed: deg2Rad(180),
        size: Vector.square(size: 70),
      );

  Hero copyWith({
    required Vector position,
  }) =>
      Hero._(
        position: position,
        angle: angle,
        rotationSpeed: rotationSpeed,
        size: size,
      );

  void shoot() {
    rotationSpeed = -rotationSpeed;
  }

  @override
  void update(double delta) {
    super.update(delta);
  }

  @mustCallSuper
  @override
  String toString() {
    return 'Hero{moving: ${super.toString()}}';
  }
}
