import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_counter_shooter/di/di.dart';
import 'package:flutter_counter_shooter/logic/blocs/game_score/bloc.dart';
import 'package:flutter_counter_shooter/logic/blocs/game_score/state.dart';
import 'package:flutter_counter_shooter/logic/blocs/waves/bloc.dart';
import 'package:flutter_counter_shooter/logic/blocs/waves/state.dart';

class WaveValue extends StatelessWidget {
  const WaveValue({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WavesBloc, WavesState>(
      bloc: di.get<WavesBloc>(),
      builder: (BuildContext context, WavesState wavesState) {
        return BlocBuilder<GameScoreBloc, GameScoreState>(
          bloc: di.get<GameScoreBloc>(),
          builder: (BuildContext context, GameScoreState gameScoreState) {
            return gameScoreState.gameStarted
                ? AnimatedOpacity(
                    duration: const Duration(milliseconds: 800),
                    opacity: 1,
                    child: Text(
                      'Wave: ${wavesState.count}',
                      style: Theme.of(context).textTheme.headline4,
                    ),
                  )
                : const AnimatedOpacity(
                    duration: Duration(milliseconds: 800),
                    opacity: 0,
                    child: SizedBox.shrink(),
                  );
          },
        );
      },
    );
  }
}
