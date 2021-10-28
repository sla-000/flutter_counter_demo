import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_counter_shooter/di/di.dart';
import 'package:flutter_counter_shooter/logic/blocs/frame/bloc.dart';
import 'package:flutter_counter_shooter/logic/blocs/frame/event.dart';
import 'package:flutter_counter_shooter/logic/blocs/frame/state.dart';
import 'package:flutter_counter_shooter/logic/blocs/scene/event.dart';
import 'package:flutter_counter_shooter/logic/blocs/scene/scene.dart';
import 'package:flutter_counter_shooter/ui/game/bombs/bombs_view.dart';
import 'package:flutter_counter_shooter/ui/game/bullets/bullets_view.dart';
import 'package:flutter_counter_shooter/ui/game/protagonist/protagonist.dart';

class GameField extends StatelessWidget {
  const GameField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FrameBloc, FrameState>(
      bloc: di.get<FrameBloc>(),
      builder: (BuildContext context, FrameState state) {
        di.get<SceneBloc>().add(SceneEvent.update(state.delta));
        di.get<FrameBloc>().add(const FrameEvent.update());

        return Stack(
          children: <Widget>[
            Positioned(
              left: 0,
              top: 0,
              child: Text(state.delta.toString()),
            ),
            ProtagonistView(
              protagonist: di.get<SceneBloc>().state.protagonist,
            ),
            BombsView(
              bombs: di.get<SceneBloc>().state.bombs,
            ),
            BulletsView(
              bullets: di.get<SceneBloc>().state.bullets,
            ),
            RecordsTable(),
          ],
        );
      },
    );
  }
}

class RecordsTable extends StatelessWidget {
  const RecordsTable({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center();
  }
}
