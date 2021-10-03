import 'package:flutter/material.dart';
import 'package:flutter_counter_shooter/di/di.dart';
import 'package:flutter_counter_shooter/logic/blocs/frame_update_bloc.dart';
import 'package:flutter_counter_shooter/logic/game/bullet/bullet.dart';
import 'package:flutter_counter_shooter/logic/game/scene_data.dart';
import 'package:flutter_counter_shooter/ui/game/gamer.dart';

class GameField extends StatelessWidget {
  const GameField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<void>(
      stream: I.get<FrameUpdateBloc>().stream,
      builder: (_, __) {
        I.get<FrameUpdateBloc>().update();

        final double delta = I.get<FrameUpdateBloc>().getDelta();

        I.get<SceneData>().update(delta);

        return Stack(
          children: <Widget>[
            Positioned(
              left: 0,
              top: 0,
              child: Text(delta.toString()),
            ),
            _buildHero(),
            ..._buildEnemies(),
            ..._buildBullets(),
          ],
        );
      },
    );
  }

  List<Widget> _buildEnemies() {
    return <Widget>[];
  }

  List<Widget> _buildBullets() {
    return I.get<SceneData>().bullets.map(_buildBullet).toList(growable: false);
  }

  Widget _buildBullet(Bullet bullet) => Positioned(
        left: bullet.xOrigin,
        top: bullet.yOrigin,
        child: Transform.rotate(
          angle: bullet.angle,
          child: Icon(
            Icons.cancel,
            size: bullet.size.x,
            color: Colors.red,
          ),
        ),
      );

  Widget _buildHero() => Positioned(
        left: I.get<SceneData>().hero.xOrigin,
        top: I.get<SceneData>().hero.yOrigin,
        child: Transform.rotate(
          angle: I.get<SceneData>().hero.angle,
          child: Gamer(size: I.get<SceneData>().hero.size.x),
        ),
      );
}
