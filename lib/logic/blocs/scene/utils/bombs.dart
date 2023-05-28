import 'package:flutter_counter_shooter/logic/game/enemy/bomb.dart';
import 'package:flutter_counter_shooter/logic/game/math/vector.dart';

List<Bomb> convertBombs(List<Bomb> bombs, double xCoeff, double yCoeff) => bombs
    .map(
      (Bomb bomb) => bomb.copyWith(
        position: Vector(
          x: bomb.position.x * xCoeff,
          y: bomb.position.y * yCoeff,
        ),
      ),
    )
    .toList();

Vector getBombPosition(double width, double height, double value) {
  final perimeter = (width + height) * 2;
  final enteringPoint = perimeter * value;

  if (enteringPoint < width) {
    return Vector(x: enteringPoint, y: 0);
  } else if (enteringPoint < width + height) {
    return Vector(x: width, y: enteringPoint - width);
  } else if (enteringPoint < width * 2 + height) {
    return Vector(x: enteringPoint - (width + height), y: height);
  } else {
    return Vector(x: 0, y: enteringPoint - (width * 2 + height));
  }
}
