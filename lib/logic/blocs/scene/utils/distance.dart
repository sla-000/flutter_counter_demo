import 'dart:math';

import 'package:flutter_counter_shooter/logic/game/actor/actor_moving.dart';
import 'package:flutter_counter_shooter/logic/game/actor/actor_state.dart';
import 'package:flutter_counter_shooter/logic/game/bullet/bullet.dart';
import 'package:flutter_counter_shooter/logic/game/enemy/bomb.dart';
import 'package:flutter_counter_shooter/logic/game/protagonist/protagonist.dart';

const double kDeleteDistance = 100;

int checkAllCollisions({
  required Protagonist protagonist,
  required List<Bullet> bullets,
  required List<Bomb> bombs,
  required void Function(List<Bullet> bullets) onBulletRemove,
  required void Function(List<Bomb> bombs) onBombRemove,
  required void Function(Bomb bomb) onProtagonistHit,
}) {
  final delBullets = <Bullet>[];
  final delBombs = <Bomb>[];

  for (final bomb in bombs) {
    if (actorsAreClose(protagonist, bomb, distance: 40)) {
      onProtagonistHit(bomb);
    }

    for (final bullet in bullets) {
      if (actorsAreClose(
        bullet,
        bomb,
        distance: max(bullet.size.x / 2, bomb.size.x / 2),
      )) {
        delBombs.add(bomb);
        delBullets.add(bullet);
      }
    }
  }

  onBulletRemove(delBullets);

  onBombRemove(delBombs);

  return delBombs.length;
}

bool actorsAreClose(
  ActorMoving actor0,
  ActorMoving actor1, {
  double distance = 20,
}) =>
    actor0.position.distance(actor1.position) < distance;

void checkBoundsAddToDeleteList(
  List<ActorState> delItems,
  ActorState actor,
  double width,
  double height,
) {
  if (actor.position.x < -kDeleteDistance ||
      actor.position.x > width + kDeleteDistance) {
    delItems.add(actor);
    return;
  }

  if (actor.position.y < -kDeleteDistance ||
      actor.position.y > height + kDeleteDistance) {
    delItems.add(actor);
    return;
  }
}
