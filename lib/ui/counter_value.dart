import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_counter_shooter/di/di.dart';
import 'package:flutter_counter_shooter/logic/blocs/score/bloc.dart';
import 'package:flutter_counter_shooter/logic/blocs/score/state.dart';

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
              key: const Key('ade99e892f137424c04a36dbf01a205b'),
            );

            break;
          case GameState.started:
            widget = Text(
              'Score: ${gameScoreState.score}',
              style: Theme.of(context).textTheme.headline3!.copyWith(fontFamily: 'VT323'),
              key: const Key('f63a54b4a5b54a9cd0c8a49d5fa58e88'),
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
