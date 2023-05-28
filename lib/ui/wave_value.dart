import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_counter_shooter/di/di.dart';
import 'package:flutter_counter_shooter/logic/blocs/score/bloc.dart';
import 'package:flutter_counter_shooter/logic/blocs/score/state.dart';
import 'package:flutter_counter_shooter/logic/blocs/waves/bloc.dart';
import 'package:flutter_counter_shooter/logic/blocs/waves/state.dart';
import 'package:flutter_counter_shooter/theme/default_theme.dart';
import 'package:flutter_counter_shooter/theme/durations.dart';
import 'package:flutter_counter_shooter/utils/context_extensions.dart';

class WaveValue extends StatelessWidget {
  const WaveValue({
    super.key,
  });

  @override
  Widget build(BuildContext context) => BlocBuilder<WavesBloc, WavesState>(
        bloc: di.get<WavesBloc>(),
        builder: (BuildContext context, WavesState wavesState) =>
            BlocBuilder<ScoreBloc, ScoreState>(
          bloc: di.get<ScoreBloc>(),
          builder: (BuildContext context, ScoreState gameScoreState) =>
              gameScoreState.isStarted
                  ? AnimatedOpacity(
                      duration: kXlDuration,
                      opacity: 1,
                      child: Text(
                        '${context.l10n.wave} ${wavesState.count + 1}',
                        style: labelTextStyle(context),
                      ),
                    )
                  : const AnimatedOpacity(
                      duration: kXlDuration,
                      opacity: 0,
                      child: SizedBox.shrink(),
                    ),
        ),
      );
}
