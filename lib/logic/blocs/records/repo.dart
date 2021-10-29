import 'dart:async';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'repo.freezed.dart';

@freezed
class RecordData with _$RecordData {
  const factory RecordData({
    @Default(kPositionNA) int position,
    @Default('') String name,
    @Default(kScoreNA) int score,
    DateTime? dateTime,
  }) = _RecordData;

  const RecordData._();

  static const int kPositionNA = -1;
  static const int kScoreNA = -1;
}

abstract class RecordsDbRepo {
  FutureOr<List<RecordData>> getRecords({
    String name = '',
  });

  FutureOr<void> addRecord({
    required String name,
    required int score,
  });
}
