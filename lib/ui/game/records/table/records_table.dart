import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_counter_shooter/di/di.dart';
import 'package:flutter_counter_shooter/logic/blocs/records/bloc.dart';
import 'package:flutter_counter_shooter/logic/blocs/records/repo.dart';
import 'package:flutter_counter_shooter/logic/blocs/records/state.dart';

import 'package:flutter_counter_shooter/ui/game/records/table/one_record.dart';

class RecordsTable extends StatelessWidget {
  const RecordsTable({
    super.key,
  });

  @override
  Widget build(BuildContext context) => const SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: RecordsList(),
      );
}

class RecordsList extends StatelessWidget {
  const RecordsList({
    super.key,
  });

  @override
  Widget build(BuildContext context) => BlocBuilder<RecordsBloc, RecordsState>(
        bloc: di<RecordsBloc>(),
        buildWhen: (RecordsState previous, RecordsState current) =>
            current.records != previous.records,
        builder: (_, RecordsState recordsState) => Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: _buildRecords(recordsState.records),
        ),
      );

  List<OneRecord> _buildRecords(List<RecordData> records) => records
      .map(
        (RecordData recordData) => OneRecord(
          recordData: recordData,
        ),
      )
      .toList();
}
