import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_counter_shooter/di/di.dart';
import 'package:flutter_counter_shooter/logic/blocs/score/bloc.dart';
import 'package:flutter_counter_shooter/logic/blocs/score/state.dart';
import 'package:flutter_counter_shooter/logic/blocs/waves/bloc.dart';
import 'package:flutter_counter_shooter/logic/blocs/waves/state.dart';

class TimeValue extends StatelessWidget {
  const TimeValue({
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
            final int remainingTime = kWaveTime - wavesState.waveTime;
            final int remainingTime0 = (remainingTime < 0) ? 0 : remainingTime;
            final bool show = remainingTime0 < 10000;

            return (gameScoreState.gameStarted && show)
                ? AnimatedOpacity(
                    duration: const Duration(milliseconds: 800),
                    opacity: 1,
                    child: Text(
                      (remainingTime0 / 1000).toStringAsFixed(3),
                      style: Theme.of(context).textTheme.headline4!.copyWith(color: _getColor(remainingTime0)),
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

  Color? _getColor(int remainingTime) {
    remainingTime += 1500 - Random.secure().nextInt(3000);

    if (remainingTime > 7000) {
      return Colors.grey[700];
    } else if (remainingTime > 5000) {
      return Colors.blue[700];
    } else if (remainingTime > 3000) {
      return Colors.green[700];
    } else if (remainingTime > 2000) {
      return Colors.yellow[700];
    } else if (remainingTime > 1000) {
      return Colors.orange[700];
    } else {
      return Colors.red[700];
    }
  }
}
