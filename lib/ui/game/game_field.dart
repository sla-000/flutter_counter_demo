import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_counter_shooter/di/di.dart';
import 'package:flutter_counter_shooter/logic/blocs/frame_update/bloc.dart';
import 'package:flutter_counter_shooter/logic/blocs/frame_update/event.dart';
import 'package:flutter_counter_shooter/logic/blocs/frame_update/state.dart';
import 'package:flutter_counter_shooter/logic/blocs/protagonist/bloc.dart';
import 'package:flutter_counter_shooter/logic/blocs/scene/scene.dart';
import 'package:flutter_counter_shooter/logic/game/bullet/bullet.dart';
import 'package:flutter_counter_shooter/logic/game/enemy/bomb.dart';
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
      bloc: di.get<FrameUpdateBloc>(),
      builder: (BuildContext context, FrameUpdateState state) {
        di.get<SceneBloc>().update(state.delta);
        di.get<FrameUpdateBloc>().add(const FrameUpdateEvent.update());

        return Stack(
          children: <Widget>[
            Positioned(
              left: 0,
              top: 0,
              child: Text(state.delta.toString()),
            ),
            ProtagonistView(
              protagonist: di.get<ProtagonistBloc>().state.protagonist,
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
        .get<SceneBloc>()
        .bombsBloc
        .state
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
        .get<SceneBloc>()
        .bulletsBloc
        .state
        .bullets
        .map(
          (Bullet bullet) => BulletView(
            bullet: bullet,
          ),
        )
        .toList(growable: false);
  }
}
