import 'package:flutter/material.dart';
import 'package:flutter_counter_shooter/di/di.dart';
import 'package:flutter_counter_shooter/logic/blocs/game_score_bloc.dart';

class CounterValue extends StatelessWidget {
  const CounterValue({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<int>(
      stream: I.get<GameScoreBloc>().stream,
      builder: (BuildContext context, AsyncSnapshot<int> snapshot) {
        return Text(
          '${snapshot.data}',
          style: Theme.of(context).textTheme.headline4,
        );
      },
    );
  }
}
