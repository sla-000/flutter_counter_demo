import 'package:flutter_counter_shooter/logic/game/actor/actor_moving.dart';
import 'package:flutter_counter_shooter/logic/game/actor/actor_state.dart';
import 'package:flutter_counter_shooter/logic/game/bullet/bullet.dart';
import 'package:flutter_counter_shooter/logic/game/enemy/bomb.dart';

const double kDeleteDistance = 100;

int checkCollisions({
  required List<Bullet> bullets,
  required List<Bomb> bombs,
  required void Function(List<Bullet> bullets) onBulletRemove,
  required void Function(List<Bomb> bombs) onBombRemove,
}) {
  final List<Bullet> delBullets = <Bullet>[];
  final List<Bomb> delBombs = <Bomb>[];

  for (final Bullet bullet in bullets) {
    bool bulletHaveCollision = false;

    for (final Bomb bomb in bombs) {
      if (bulletIsClose(bullet, bomb)) {
        delBombs.add(bomb);
        bulletHaveCollision = true;
      }
    }

    if (bulletHaveCollision) {
      delBullets.add(bullet);
    }
  }

  onBulletRemove(delBullets);

  onBombRemove(delBombs);

  return delBombs.length;
}

bool bulletIsClose(ActorMoving bullet, ActorMoving bomb) {
  return bullet.position.distance(bomb.position) < 20;
}

void checkBoundsAddToDeleteList(List<ActorState> delItems, ActorState actor, double width, double height) {
  if (actor.position.x < -kDeleteDistance || actor.position.x > width + kDeleteDistance) {
    delItems.add(actor);
    return;
  }

  if (actor.position.y < -kDeleteDistance || actor.position.y > height + kDeleteDistance) {
    delItems.add(actor);
    return;
  }
}
