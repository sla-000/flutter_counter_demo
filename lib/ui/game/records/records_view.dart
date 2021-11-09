import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_counter_shooter/di/di.dart';
import 'package:flutter_counter_shooter/logic/blocs/records/bloc.dart';
import 'package:flutter_counter_shooter/logic/blocs/records/state.dart';
import 'package:flutter_counter_shooter/logic/blocs/score/bloc.dart';
import 'package:flutter_counter_shooter/logic/blocs/score/state.dart';

import 'records_table.dart';

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
    return Center(
      child: SizedBox(
        width: min(MediaQuery.of(context).size.width * 0.66, 350),
        child: BlocBuilder<RecordsBloc, RecordsState>(
          bloc: di.get<RecordsBloc>(),
          builder: (_, RecordsState state) {
            return _RecordsFrame(
              recordsState: state,
            );
          },
        ),
      ),
    );
  }
}

class _RecordsFrame extends StatelessWidget {
  const _RecordsFrame({
    Key? key,
    required this.recordsState,
  }) : super(key: key);

  final RecordsState recordsState;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        Text(
          'Records table',
          style: Theme.of(context).textTheme.headline4,
        ),
        const SizedBox(height: 16),
        Text(
          'Your score: ${recordsState.lastRecord}',
          style: Theme.of(context).textTheme.headline5,
        ),
        const SizedBox(height: 16),
        Text('Enter your name: ${recordsState.name}'),
        const SizedBox(height: 16),
        Expanded(
          child: AnimatedSwitcher(
            duration: const Duration(milliseconds: 800),
            child: recordsState.waitNetwork
                ? const Center(
                    child: SizedBox.square(
                      dimension: 50,
                      child: CircularProgressIndicator(),
                    ),
                  )
                : RecordsTable(
                    records: recordsState.records,
                  ),
          ),
        ),
      ],
    );
  }
}
