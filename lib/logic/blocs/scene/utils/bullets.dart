import 'dart:math';

import 'package:flutter_counter_shooter/logic/game/bullet/bullet.dart';
import 'package:flutter_counter_shooter/logic/game/math/vector.dart';

List<Bullet> convertBullets(
  List<Bullet> bullets,
  double xCoeff,
  double yCoeff,
) =>
    bullets
        .map(
          (Bullet bullet) => bullet.copyWith(
            position: Vector(
              x: bullet.position.x * xCoeff,
              y: bullet.position.y * yCoeff,
            ),
          ),
        )
        .toList();

double getBulletRotationSpeed(double rotationSpeed) {
  final absSpeed = pow(rotationSpeed.abs(), 2.3).toDouble();
  return rotationSpeed > 0 ? -absSpeed : absSpeed;
}
