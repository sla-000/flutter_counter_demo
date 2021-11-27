import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_counter_shooter/di/di.dart';
import 'package:flutter_counter_shooter/logic/blocs/score/bloc.dart';
import 'package:flutter_counter_shooter/logic/blocs/score/state.dart';
import 'package:flutter_counter_shooter/logic/blocs/waves/bloc.dart';
import 'package:flutter_counter_shooter/logic/blocs/waves/state.dart';
import 'package:flutter_counter_shooter/theme/durations.dart';
import 'package:flutter_counter_shooter/utils/context_extensions.dart';

class WaveValue extends StatelessWidget {
  const WaveValue({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WavesBloc, WavesState>(
      bloc: di.get<WavesBloc>(),
      builder: (BuildContext context, WavesState wavesState) {
        return BlocBuilder<ScoreBloc, ScoreState>(
          bloc: di.get<ScoreBloc>(),
          builder: (BuildContext context, ScoreState gameScoreState) {
            return gameScoreState.isStarted
                ? AnimatedOpacity(
                    duration: kXlDuration,
                    opacity: 1,
                    child: Text(
                      '${context.l10n.wave} ${wavesState.count + 1}',
                      style: Theme.of(context).textTheme.headline3,
                    ),
                  )
                : const AnimatedOpacity(
                    duration: kXlDuration,
                    opacity: 0,
                    child: SizedBox.shrink(),
                  );
          },
        );
      },
    );
  }
}
