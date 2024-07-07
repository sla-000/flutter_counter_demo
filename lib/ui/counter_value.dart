import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_counter_shooter/di/di.dart';
import 'package:flutter_counter_shooter/logic/blocs/score/bloc.dart';
import 'package:flutter_counter_shooter/logic/blocs/score/state.dart';
import 'package:flutter_counter_shooter/theme/default_theme.dart';
import 'package:flutter_counter_shooter/theme/durations.dart';
import 'package:flutter_counter_shooter/utils/context_extensions.dart';

class CounterValue extends StatelessWidget {
  const CounterValue({
    super.key,
  });

  @override
  Widget build(BuildContext context) => BlocBuilder<ScoreBloc, ScoreState>(
        bloc: di.get<ScoreBloc>(),
        builder: (BuildContext context, ScoreState gameScoreState) {
          late final Widget widget;

          switch (gameScoreState.gameState) {
            case GameState.waitStart:
              widget = Text(
                '${gameScoreState.score}',
                style: Theme.of(context).textTheme.headlineMedium,
                key: const Key('CounterValue-waitStart'),
              );

            case GameState.started:
              widget = Text(
                '${context.l10n.score} ${gameScoreState.score}',
                style: labelTextStyle(context),
                key: const Key('CounterValue-started'),
              );

            case GameState.finished:
              widget = const SizedBox.shrink();
          }

          return AnimatedSwitcher(
            duration: kXlDuration,
            child: widget,
          );
        },
      );
}
