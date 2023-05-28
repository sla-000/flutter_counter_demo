import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_counter_shooter/di/di.dart';
import 'package:flutter_counter_shooter/logic/blocs/records/bloc.dart';
import 'package:flutter_counter_shooter/logic/blocs/records/state.dart';
import 'package:flutter_counter_shooter/theme/durations.dart';
import 'package:flutter_counter_shooter/ui/game/records/table/records_table.dart';

class RecordsTableOrLoader extends StatelessWidget {
  const RecordsTableOrLoader({
    super.key,
  });

  @override
  Widget build(BuildContext context) => BlocBuilder<RecordsBloc, RecordsState>(
        bloc: di<RecordsBloc>(),
        buildWhen: (RecordsState previous, RecordsState current) =>
            current.waitNetwork != previous.waitNetwork,
        builder: (_, RecordsState recordsState) => AnimatedSwitcher(
          duration: kXlDuration,
          child: recordsState.waitNetwork
              ? const Center(
                  child: SizedBox.square(
                    dimension: 50,
                    child: CircularProgressIndicator(),
                  ),
                )
              : const Padding(
                  padding: EdgeInsets.symmetric(vertical: 8),
                  child: RecordsTable(),
                ),
        ),
      );
}
