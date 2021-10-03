import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_counter_shooter/di/di.dart';
import 'package:flutter_counter_shooter/logic/blocs/game_score/bloc.dart';
import 'package:flutter_counter_shooter/logic/blocs/game_score/state.dart';

class CounterValue extends StatelessWidget {
  const CounterValue({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GameScoreBloc, GameScoreState>(
      bloc: di.get<GameScoreBloc>(),
      builder: (BuildContext context, GameScoreState state) {
        return Text(
          '${state.score}',
          style: Theme.of(context).textTheme.headline4,
        );
      },
    );
  }
}
