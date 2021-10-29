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
          return const _RecordsView();
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
    return BlocBuilder<RecordsBloc, RecordsState>(
      bloc: di.get<RecordsBloc>(),
      builder: (_, RecordsState state) {
        return Center(
          child: SizedBox(
            width: MediaQuery.of(context).size.width * 0.66,
            height: MediaQuery.of(context).size.height * 0.8,
            child: Column(
              children: <Widget>[
                const SizedBox(height: 50),
                const Text('Records table'),
                Text('Your score: ${state.lastRecord}'),
                Text('Enter your name: ${state.name}'),
                Expanded(
                  child: AnimatedSwitcher(
                    duration: const Duration(milliseconds: 800),
                    child: state.waitNetwork
                        ? const SizedBox.square(
                            dimension: 80,
                            child: CircularProgressIndicator(),
                          )
                        : RecordsTable(
                            records: state.records,
                          ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
