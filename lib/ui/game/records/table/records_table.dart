import 'package:flutter/material.dart';
import 'package:flutter_counter_shooter/logic/blocs/records/repo.dart';

import 'one_record.dart';

class RecordsTable extends StatelessWidget {
  const RecordsTable({
    Key? key,
    required this.records,
  }) : super(key: key);

  final List<RecordData> records;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: _buildRecords(),
      ),
    );
  }

  List<OneRecord> _buildRecords() => records
      .map(
        (RecordData recordData) => OneRecord(
          recordData: recordData,
        ),
      )
      .toList();
}
