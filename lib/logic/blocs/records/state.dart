import 'package:flutter_counter_shooter/logic/blocs/records/repo.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'state.freezed.dart';

enum RecordViewState {
  enterName,
  showTable,
}

@freezed
class RecordsState with _$RecordsState {
  const factory RecordsState({
    @Default(0) int lastRecord,
    @Default('') String name,
    @Default(<String>[]) List<String> lastNames,
    @Default(<RecordData>[]) List<RecordData> records,
    @Default(false) bool waitNetwork,
    @Default('') String lastNetworkError,
    @Default(RecordViewState.enterName) RecordViewState recordViewState,
  }) = _RecordsState;

  const RecordsState._();

  bool get isScoreGoodForTable {
    return _isScoreBigger && !_isAlreadyInTable;
  }

  bool get _isScoreBigger => records.any((RecordData recordData) => lastRecord > recordData.score);

  bool get _isAlreadyInTable =>
      records.any((RecordData recordData) => lastRecord == recordData.score && name == recordData.name);
}
