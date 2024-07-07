import 'package:flutter_counter_shooter/logic/game/actor/actor_state.dart';
import 'package:flutter_counter_shooter/logic/game/actor/updatable.dart';
import 'package:flutter_counter_shooter/logic/game/math/vector.dart';
import 'package:meta/meta.dart';

class ActorMoving extends ActorState implements Updatable {
  ActorMoving({
    super.position,
    super.angle,
    Vector? linearSpeed,
    double? rotationSpeed,
    Vector? size,
  })  : linearSpeed = linearSpeed ?? Vector.zero(),
        rotationSpeed = rotationSpeed ?? 0,
        size = size ?? Vector.one();

  ActorMoving copyWith({
    required Vector position,
  }) =>
      ActorMoving(
        position: position,
        angle: angle,
        linearSpeed: linearSpeed,
        rotationSpeed: rotationSpeed,
        size: size,
      );

  final Vector linearSpeed;
  double rotationSpeed;
  final Vector size;

  double get xOrigin => position.x - (size.x / 2);
  double get yOrigin => position.y - (size.y / 2);

  @mustCallSuper
  @override
  void update(double delta) {
    position.applyAdd(linearSpeed.multiply(delta));
    angle += rotationSpeed * delta;
  }

  @mustCallSuper
  @override
  String toString() =>
      'ActorMoving{state: ${super.toString()}, linearSpeed: $linearSpeed, '
      'rotationSpeed: $rotationSpeed, size: $size}';
}
