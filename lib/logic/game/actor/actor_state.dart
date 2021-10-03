import 'package:flutter/cupertino.dart';
import 'package:flutter_counter_shooter/logic/game/math/vector.dart';

class ActorState {
  ActorState({
    Vector? position,
    double? angle,
  })  : position = position ?? Vector.empty(),
        angle = angle ?? 0;

  final Vector position;
  double angle;

  @mustCallSuper
  @override
  String toString() {
    return 'ActorState{position: $position, angle: $angle}';
  }
}
