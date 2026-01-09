import 'package:flutter/cupertino.dart';
import 'package:flutter_counter_shooter/logic/game/math/vector.dart';

enum ActorLifecycle {
  alive,
  dying,
  dead,
}

class ActorState {
  ActorState({
    Vector? position,
    double? angle,
    this.opacity = 1,
    this.lifecycle = ActorLifecycle.alive,
  }) : position = position ?? Vector.empty(),
       angle = angle ?? 0;

  final Vector position;
  double angle;
  double opacity;
  ActorLifecycle lifecycle;

  @mustCallSuper
  @override
  String toString() =>
      'ActorState{position: $position, angle: $angle, opacity: $opacity, '
      'lifecycle: $lifecycle}';
}
