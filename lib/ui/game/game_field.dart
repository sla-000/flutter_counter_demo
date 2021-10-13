import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_counter_shooter/di/di.dart';
import 'package:flutter_counter_shooter/logic/blocs/frame_update/bloc.dart';
import 'package:flutter_counter_shooter/logic/blocs/frame_update/event.dart';
import 'package:flutter_counter_shooter/logic/blocs/frame_update/state.dart';
import 'package:flutter_counter_shooter/logic/game/bullet/bullet.dart';
import 'package:flutter_counter_shooter/logic/game/enemy/bomb.dart';
import 'package:flutter_counter_shooter/logic/game/protagonist/protagonist.dart';
import 'package:flutter_counter_shooter/logic/game/scene_data.dart';
import 'package:flutter_counter_shooter/ui/game/gamer.dart';

class GameField extends StatelessWidget {
  const GameField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FrameUpdateBloc, FrameUpdateState>(
      builder: (BuildContext context, FrameUpdateState state) {
        di.get<SceneData>().update(state.delta);
        context.read<FrameUpdateBloc>().add(const FrameUpdateEvent.update());

        return Stack(
          children: <Widget>[
            Positioned(
              left: 0,
              top: 0,
              child: Text(state.delta.toString()),
            ),
            ProtagonistView(
              protagonist: di.get<SceneData>().protagonist,
            ),
            ..._buildBombs(),
            ..._buildBullets(),
          ],
        );
      },
    );
  }

  List<Widget> _buildBombs() {
    return di
        .get<SceneData>()
        .bombs
        .map(
          (Bomb bomb) => BombView(
            bomb: bomb,
          ),
        )
        .toList(growable: false);
  }

  List<Widget> _buildBullets() {
    return di
        .get<SceneData>()
        .bullets
        .map(
          (Bullet bullet) => BulletView(
            bullet: bullet,
          ),
        )
        .toList(growable: false);
  }
}

class ProtagonistView extends StatelessWidget {
  const ProtagonistView({
    Key? key,
    required this.protagonist,
  }) : super(key: key);

  final Protagonist protagonist;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: protagonist.xOrigin,
      top: protagonist.yOrigin,
      child: Transform.rotate(
        angle: protagonist.angle,
        child: Gamer(size: protagonist.size.x),
      ),
    );
  }
}

class BulletView extends StatelessWidget {
  const BulletView({
    Key? key,
    required this.bullet,
  }) : super(key: key);

  final Bullet bullet;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: bullet.xOrigin,
      top: bullet.yOrigin,
      child: Transform.rotate(
        angle: bullet.angle,
        child: Icon(
          Icons.cancel,
          size: bullet.size.x,
          color: Colors.yellow[600],
        ),
      ),
    );
  }
}

class BombView extends StatelessWidget {
  const BombView({
    Key? key,
    required this.bomb,
  }) : super(key: key);

  final Bomb bomb;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: bomb.xOrigin,
      top: bomb.yOrigin,
      child: Transform.rotate(
        angle: bomb.angle,
        child: Icon(
          Icons.bolt,
          size: bomb.size.x,
          color: Colors.red[400],
        ),
      ),
    );
  }
}
