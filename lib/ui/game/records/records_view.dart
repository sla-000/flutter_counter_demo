import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_counter_shooter/di/di.dart';
import 'package:flutter_counter_shooter/logic/blocs/records/bloc.dart';
import 'package:flutter_counter_shooter/logic/blocs/records/state.dart';
import 'package:flutter_counter_shooter/logic/blocs/score/bloc.dart';
import 'package:flutter_counter_shooter/logic/blocs/score/state.dart';
import 'package:flutter_counter_shooter/theme/durations.dart';
import 'package:flutter_counter_shooter/ui/common/screen_title.dart';
import 'package:flutter_counter_shooter/ui/game/records/name/name_input.dart';
import 'package:flutter_counter_shooter/ui/game/records/table/records_table_or_loader.dart';
import 'package:flutter_counter_shooter/ui/game/records/your_score.dart';

class RecordsView extends StatelessWidget {
  const RecordsView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ScoreBloc, ScoreState>(
      bloc: di.get<ScoreBloc>(),
      buildWhen: (ScoreState previous, ScoreState current) => current.gameState != previous.gameState,
      builder: (_, ScoreState state) {
        if (state.isFinished) {
          return const Padding(
            padding: EdgeInsets.only(top: 50),
            child: _RecordsView(),
          );
        }

        return const SizedBox.shrink();
      },
    );
  }
}

class _RecordsView extends StatelessWidget {
  const _RecordsView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<RecordsBloc>(
      create: (_) => di.get<RecordsBloc>(),
      child: Center(
        child: SizedBox(
          width: min(MediaQuery.of(context).size.width * 0.66, 400),
          child: const _AddOrShowRecord(),
        ),
      ),
    );
  }
}

class _AddOrShowRecord extends StatelessWidget {
  const _AddOrShowRecord({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const <Widget>[
        ScreenTitle(
          text: 'Records table',
        ),
        SizedBox(height: 16),
        YourScore(),
        SizedBox(height: 16),
        _NameInputOrNothing(),
        SizedBox(height: 8),
        Expanded(
          child: RecordsTableOrLoader(),
        ),
      ],
    );
  }
}

class _NameInputOrNothing extends StatelessWidget {
  const _NameInputOrNothing({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RecordsBloc, RecordsState>(
      buildWhen: (RecordsState previous, RecordsState current) => current.showNameInput != previous.showNameInput,
      builder: (_, RecordsState recordsState) {
        return AnimatedCrossFade(
          duration: kXlDuration,
          crossFadeState: recordsState.showNameInput ? CrossFadeState.showFirst : CrossFadeState.showSecond,
          firstChild: const NameInput(),
          secondChild: const SizedBox.shrink(),
        );
      },
    );
  }
}
