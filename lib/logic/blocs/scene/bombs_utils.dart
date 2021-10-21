import 'package:flutter_counter_shooter/logic/game/enemy/bomb.dart';
import 'package:flutter_counter_shooter/logic/game/math/vector.dart';

List<Bomb> convertBombs(List<Bomb> bombs, double xCoeff, double yCoeff) {
  return bombs
      .map(
        (Bomb bomb) => bomb.copyWith(
          position: Vector(
            x: bomb.position.x * xCoeff,
            y: bomb.position.y * yCoeff,
          ),
        ),
      )
      .toList();
}
