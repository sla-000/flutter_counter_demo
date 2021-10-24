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
        return AnimatedSwitcher(
          duration: const Duration(milliseconds: 800),
          child: gameScoreState.gameStarted
              ? Text(
                  'Score: ${gameScoreState.score}',
                  style: Theme.of(context).textTheme.headline4,
                  key: const Key('f63a54b4a5b54a9cd0c8a49d5fa58e88'),
                )
              : Text(
                  '${gameScoreState.score}',
                  style: Theme.of(context).textTheme.headline4,
                  key: const Key('ade99e892f137424c04a36dbf01a205b'),
                ),
        );
      },
    );
  }
}
