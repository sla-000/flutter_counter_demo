import 'package:flutter_counter_shooter/logic/game/actor/actor_moving.dart';
import 'package:flutter_counter_shooter/logic/game/actor/updatable.dart';
import 'package:flutter_counter_shooter/logic/game/math/vector.dart';

class Bomb extends ActorMoving implements Updatable {
  Bomb({
    required Vector position,
    required double angle,
    required Vector linearSpeed,
  }) : super(
         position: position,
         angle: angle,
         linearSpeed: linearSpeed,
         size: Vector.square(size: 50),
       );

  @override
  Bomb copyWith({
    required Vector position,
  }) => Bomb(
    position: position,
    angle: angle,
    linearSpeed: linearSpeed,
  );

  @override
  String toString() => 'Bomb{moving: ${super.toString()}}';
}
