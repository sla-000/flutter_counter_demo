import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_counter_shooter/di/di.dart';
import 'package:flutter_counter_shooter/logic/blocs/score/bloc.dart';
import 'package:flutter_counter_shooter/logic/blocs/score/state.dart';
import 'package:flutter_counter_shooter/logic/blocs/waves/bloc.dart';
import 'package:flutter_counter_shooter/logic/blocs/waves/state.dart';
import 'package:flutter_counter_shooter/theme/default_theme.dart';
import 'package:flutter_counter_shooter/theme/durations.dart';

class TimeValue extends StatelessWidget {
  const TimeValue({
    super.key,
  });

  @override
  Widget build(BuildContext context) => BlocBuilder<WavesBloc, WavesState>(
        bloc: di.get<WavesBloc>(),
        builder: (BuildContext context, WavesState wavesState) =>
            BlocBuilder<ScoreBloc, ScoreState>(
          bloc: di.get<ScoreBloc>(),
          builder: (BuildContext context, ScoreState gameScoreState) {
            final remainingTime = kWaveTime - wavesState.waveTime;
            final remainingTime0 = (remainingTime < 0) ? 0 : remainingTime;
            final show = remainingTime0 < 10000;

            return (gameScoreState.isStarted && show)
                ? AnimatedOpacity(
                    duration: kXlDuration,
                    opacity: 1,
                    child: Text(
                      (remainingTime0 / 1000).toStringAsFixed(3),
                      style: labelTextStyle(context).copyWith(
                        color: _getColor(remainingTime0),
                      ),
                    ),
                  )
                : const AnimatedOpacity(
                    duration: kXlDuration,
                    opacity: 0,
                    child: SizedBox.shrink(),
                  );
          },
        ),
      );

  Color _getColor(int remainingTime) {
    final value = remainingTime + 1000 - Random.secure().nextInt(2000);

    if (value > 9000) {
      return Colors.red[700]!;
    } else if (value > 7000) {
      return Colors.orange[700]!;
    } else if (value > 5000) {
      return Colors.yellow[600]!;
    } else if (value > 4000) {
      return Colors.yellow[100]!;
    } else if (value > 3000) {
      return Colors.blue[100]!;
    } else if (value > 2000) {
      return Colors.blue[400]!;
    } else if (value > 1000) {
      return Colors.blue[800]!;
    } else {
      return Colors.grey[800]!;
    }
  }
}
