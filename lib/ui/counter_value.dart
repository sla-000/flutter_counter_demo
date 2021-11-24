import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_counter_shooter/di/di.dart';
import 'package:flutter_counter_shooter/logic/blocs/score/bloc.dart';
import 'package:flutter_counter_shooter/logic/blocs/score/state.dart';
import 'package:flutter_counter_shooter/utils/context_extensions.dart';

class CounterValue extends StatelessWidget {
  const CounterValue({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ScoreBloc, ScoreState>(
      bloc: di.get<ScoreBloc>(),
      builder: (BuildContext context, ScoreState gameScoreState) {
        late final Widget widget;

        switch (gameScoreState.gameState) {
          case GameState.waitStart:
            widget = Text(
              '${gameScoreState.score}',
              style: Theme.of(context).textTheme.headline4,
              key: const Key('waitStart'),
            );

            break;
          case GameState.started:
            widget = Text(
              '${context.l10n.score} ${gameScoreState.score}',
              style: Theme.of(context).textTheme.headline3!.copyWith(fontFamily: 'VT323'),
              key: const Key('started'),
            );
            break;
          case GameState.finished:
            widget = const SizedBox.shrink();
            break;
        }

        return AnimatedSwitcher(
          duration: const Duration(milliseconds: 800),
          child: widget,
        );
      },
    );
  }
}
