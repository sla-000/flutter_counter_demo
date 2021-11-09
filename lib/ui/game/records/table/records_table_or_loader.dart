import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_counter_shooter/logic/blocs/records/bloc.dart';
import 'package:flutter_counter_shooter/logic/blocs/records/state.dart';
import 'package:flutter_counter_shooter/ui/game/records/table/records_table.dart';

class RecordsTableOrLoader extends StatelessWidget {
  const RecordsTableOrLoader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RecordsBloc, RecordsState>(
      builder: (_, RecordsState recordsState) {
        return AnimatedSwitcher(
          duration: const Duration(milliseconds: 800),
          child: recordsState.waitNetwork
              ? const Center(
                  child: SizedBox.square(
                    dimension: 50,
                    child: CircularProgressIndicator(),
                  ),
                )
              : Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: RecordsTable(
                    records: recordsState.records,
                  ),
                ),
        );
      },
    );
  }
}
