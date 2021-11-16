import 'package:flutter_counter_shooter/logic/blocs/records/repo.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'state.freezed.dart';

@freezed
class RecordsState with _$RecordsState {
  const factory RecordsState({
    @Default(0) int lastRecord,
    @Default('') String name,
    @Default(<String>[]) List<String> lastNames,
    @Default(<RecordData>[]) List<RecordData> records,
    @Default(false) bool waitNetwork,
    @Default('') String lastNetworkError,
    @Default(false) bool showNameInput,
  }) = _RecordsState;

  const RecordsState._();

  static bool isScoreInTable(int score, List<RecordData> records) =>
      records.any((RecordData recordData) => score > recordData.score);
}
