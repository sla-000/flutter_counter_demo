import 'dart:async';

import 'package:collection/collection.dart';
import 'package:flutter_counter_shooter/logic/blocs/records/repo.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'memory.freezed.dart';

@freezed
class MemoryRecord with _$MemoryRecord {
  const factory MemoryRecord({
    @Default('') String name,
    @Default(0) int score,
    DateTime? dateTime,
  }) = _MemoryRecord;

  const MemoryRecord._();
}

final List<MemoryRecord> _records = <MemoryRecord>[];

class MemoryRecordsDbRepo implements RecordsDbRepo {
  MemoryRecordsDbRepo() {
    for (var q = 5; q <= 100; q += 5) {
      _records.add(
        MemoryRecord(
          name: 'Noname',
          score: q,
          dateTime: DateTime.now().subtract(Duration(hours: q)),
        ),
      );
    }
  }

  @override
  Future<List<RecordData>> getRecords({
    String name = '',
  }) async {
    await Future<void>.delayed(const Duration(seconds: 1));

    return _records
        .where(
          (MemoryRecord memoryRecord) =>
              name == '' || name == memoryRecord.name,
        )
        .sorted(oldestFirst)
        .sorted(biggestScoreFirst)
        .take(100)
        .mapIndexed(
          (int index, MemoryRecord memoryRecord) => RecordData(
            position: index + 1,
            dateTime: memoryRecord.dateTime,
            name: memoryRecord.name,
            score: memoryRecord.score,
          ),
        )
        .toList(growable: false);
  }

  @override
  Future<void> addRecord({
    required String name,
    required int score,
  }) async {
    await Future<void>.delayed(const Duration(seconds: 1));

    _records.add(
      MemoryRecord(
        name: name,
        score: score,
        dateTime: DateTime.now().toUtc(),
      ),
    );
  }
}

@visibleForTesting
int biggestScoreFirst(MemoryRecord a, MemoryRecord b) =>
    b.score.compareTo(a.score);

@visibleForTesting
int oldestFirst(MemoryRecord a, MemoryRecord b) {
  if (a.dateTime == null || b.dateTime == null) {
    return -1;
  }
  return a.dateTime!.compareTo(b.dateTime!);
}
