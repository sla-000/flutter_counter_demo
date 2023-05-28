import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_counter_shooter/di/di.dart';
import 'package:flutter_counter_shooter/logic/blocs/frame/bloc.dart';
import 'package:flutter_counter_shooter/logic/blocs/frame/event.dart';
import 'package:flutter_counter_shooter/logic/blocs/frame/state.dart';
import 'package:flutter_counter_shooter/logic/blocs/scene/bloc.dart';
import 'package:flutter_counter_shooter/logic/blocs/scene/event.dart';
import 'package:flutter_counter_shooter/logic/blocs/score/bloc.dart';
import 'package:flutter_counter_shooter/logic/blocs/score/state.dart';
import 'package:flutter_counter_shooter/ui/game/game_elements.dart';
import 'package:flutter_counter_shooter/ui/game/records/records_view.dart';

class GameField extends StatelessWidget {
  const GameField({
    super.key,
    required this.onRestart,
  });

  final void Function() onRestart;

  @override
  Widget build(BuildContext context) => BlocBuilder<FrameBloc, FrameState>(
        bloc: di.get<FrameBloc>(),
        builder: (BuildContext context, FrameState frameState) {
          di.get<SceneBloc>().add(SceneEvent.update(frameState.delta));
          di.get<FrameBloc>().add(const FrameEvent.update());

          return BlocBuilder<ScoreBloc, ScoreState>(
            bloc: di.get<ScoreBloc>(),
            buildWhen: (ScoreState previous, ScoreState current) =>
                current.gameState != previous.gameState,
            builder: (BuildContext context, ScoreState scoreState) {
              if (scoreState.gameState == GameState.finished) {
                return RecordsView(
                  onRestart: onRestart,
                );
              }

              return GameElements(
                delta: frameState.delta,
              );
            },
          );
        },
      );
}
