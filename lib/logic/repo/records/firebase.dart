import 'dart:async';

import 'package:flutter_counter_shooter/logic/blocs/records/repo.dart';

class FirebaseRecordsDbRepo implements RecordsDbRepo {
  @override
  Future<List<RecordData>> getRecords({
    String name = '',
  }) async {
    await Future<void>.delayed(const Duration(seconds: 1));
    return <RecordData>[];
  }

  @override
  Future<List<RecordData>> addRecord({
    required String name,
    required int score,
  }) async {
    await Future<void>.delayed(const Duration(seconds: 1));
    return <RecordData>[];
  }
}
