import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_counter_shooter/di/di.dart';
import 'package:flutter_counter_shooter/logic/blocs/score/bloc.dart';
import 'package:flutter_counter_shooter/logic/blocs/score/state.dart';
import 'package:flutter_counter_shooter/utils/context_extensions.dart';

class ShiftedAppBar extends StatelessWidget {
  const ShiftedAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ScoreBloc, ScoreState>(
      bloc: di.get<ScoreBloc>(),
      buildWhen: (ScoreState previous, ScoreState current) =>
          current.gameState != previous.gameState,
      builder: (BuildContext context, ScoreState gameScoreState) {
        return AnimatedSlide(
          duration: const Duration(milliseconds: 1000),
          offset: gameScoreState.isStarted ? const Offset(0, -1) : const Offset(0, 0),
          child: SizedBox(
            height: 50,
            child: AppBar(
              title: Text(context.l10n.flutterCounterDemo),
            ),
          ),
        );
      },
    );
  }
}
