import 'dart:async';

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

final List<MemoryRecord> _records = <MemoryRecord>[
  MemoryRecord(
    name: 'Noname',
    score: 80,
    dateTime: DateTime.now().subtract(const Duration(hours: 1)),
  ),
  MemoryRecord(
    name: 'Noname',
    score: 40,
    dateTime: DateTime.now().subtract(const Duration(hours: 2)),
  ),
  MemoryRecord(
    name: 'Noname',
    score: 20,
    dateTime: DateTime.now().subtract(const Duration(hours: 3)),
  ),
  MemoryRecord(
    name: 'Noname',
    score: 10,
    dateTime: DateTime.now().subtract(const Duration(hours: 4)),
  ),
  MemoryRecord(
    name: 'Noname',
    score: 5,
    dateTime: DateTime.now().subtract(const Duration(hours: 5)),
  ),
];

class MemoryRecordsDbRepo implements RecordsDbRepo {
  @override
  Future<List<RecordData>> getRecords({
    String name = '',
  }) async {
    await Future<void>.delayed(const Duration(seconds: 1));
    return _records
        .sorted((MemoryRecord a, MemoryRecord b) => a.name.compareTo(b.name))
        .sorted((MemoryRecord a, MemoryRecord b) => a.score.compareTo(b.score))
        .take(10)
        .mapIndexed((int index, MemoryRecord memoryRecord) => RecordData(
              position: index + 1,
              dateTime: memoryRecord.dateTime,
              name: memoryRecord.name,
              score: memoryRecord.score,
            ))
        .toList(growable: false);
  }

  @override
  Future<void> addRecord({
    required String name,
    required int score,
  }) async {
    await Future<void>.delayed(const Duration(seconds: 1));
    _records.add(MemoryRecord(
      name: name,
      score: score,
      dateTime: DateTime.now().toUtc(),
    ));
  }
}
