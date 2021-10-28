import 'package:freezed_annotation/freezed_annotation.dart';

part 'state.freezed.dart';

@freezed
class RecordData with _$RecordData {
  const factory RecordData({
    @Default(0) int record,
    @Default('') String name,
  }) = _RecordData;
}

@freezed
class RecordsState with _$RecordsState {
  const factory RecordsState({
    @Default(0) int lastRecord,
    @Default('') String name,
    @Default(false) bool showWorld,
    @Default(<RecordData>[]) List<RecordData> records,
  }) = _RecordsState;

  const RecordsState._();
}
