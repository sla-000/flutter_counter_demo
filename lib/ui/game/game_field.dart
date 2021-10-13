import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_counter_shooter/di/di.dart';
import 'package:flutter_counter_shooter/logic/blocs/frame_update/bloc.dart';
import 'package:flutter_counter_shooter/logic/blocs/frame_update/event.dart';
import 'package:flutter_counter_shooter/logic/blocs/frame_update/state.dart';
import 'package:flutter_counter_shooter/logic/game/bullet/bullet.dart';
import 'package:flutter_counter_shooter/logic/game/enemy/bomb.dart';
import 'package:flutter_counter_shooter/logic/game/scene_data.dart';
import 'package:flutter_counter_shooter/ui/game/bomb.dart';
import 'package:flutter_counter_shooter/ui/game/bullet.dart';
import 'package:flutter_counter_shooter/ui/game/protagonist/protagonist.dart';

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
