import 'package:flutter_counter_shooter/di/di.dart';
import 'package:flutter_counter_shooter/logic/blocs/game_score_bloc.dart';
import 'package:flutter_counter_shooter/logic/blocs/game_started_bloc.dart';
import 'package:flutter_counter_shooter/logic/game/actor/actor_moving.dart';
import 'package:flutter_counter_shooter/logic/game/actor/actor_state.dart';
import 'package:flutter_counter_shooter/logic/game/actor/updatable.dart';
import 'package:flutter_counter_shooter/logic/game/bullet/bullet.dart';
import 'package:flutter_counter_shooter/logic/game/hero/hero.dart';
import 'package:flutter_counter_shooter/logic/game/math/vector.dart';

const double kDeleteDistance = 100;

class SceneData implements Updatable {
  SceneData._({
    required this.width,
    required this.height,
    required this.hero,
    required this.bullets,
    required this.enemies,
  });

  factory SceneData.init({
    required double width,
    required double height,
  }) {
    return SceneData._(
      width: width,
      height: height,
      hero: Hero.init(position: Vector(x: width / 2, y: height / 2)),
      bullets: <Bullet>[],
      enemies: <ActorMoving>[],
    );
  }

  SceneData copyWith({
    required double width,
    required double height,
  }) {
    final double coeffWidth = width / this.width;
    final double coeffHeight = height / this.width;

    return SceneData._(
      width: width,
      height: height,
      hero: hero.copyWith(position: Vector(x: width / 2, y: height / 2)),
      bullets: bullets,
      enemies: enemies,
    );
  }

  final double height;
  final double width;

  final Hero hero;

  final List<Bullet> bullets;

  final List<ActorMoving> enemies;

  @override
  void update(double delta) {
    hero.update(delta);

    final List<ActorState> bulletsToDelete = <ActorState>[];
    for (final Bullet bullet in bullets) {
      bullet.update(delta);
      _checkDelete(bulletsToDelete, bullet);
    }
    bulletsToDelete.forEach(bullets.remove);

    enemies.forEach((ActorMoving enemy) => enemy.update(delta));
  }

  void _checkDelete(List<ActorState> deleteList, ActorState actor) {
    if (actor.position.x < -kDeleteDistance || actor.position.x > width + kDeleteDistance) {
      deleteList.add(actor);
      return;
    }

    if (actor.position.y < -kDeleteDistance || actor.position.y > height + kDeleteDistance) {
      deleteList.add(actor);
      return;
    }
  }

  void buttonPressed() {
    if (I.get<GameStartedBloc>().value) {
      hero.shoot();
      bullets.add(Bullet(
        position: Vector.copy(hero.position),
        angle: hero.angle,
      ));
    } else {
      I.get<GameScoreBloc>().add(1);
    }
  }
}
