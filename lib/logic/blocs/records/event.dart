import 'package:freezed_annotation/freezed_annotation.dart';

part 'event.freezed.dart';

@freezed
class RecordsEvent with _$RecordsEvent {
  const factory RecordsEvent.showGlobal(bool show) = RecordsEventShowGlobal;
  const factory RecordsEvent.fetch() = RecordsEventFetch;
  const factory RecordsEvent.upload() = RecordsEventUpload;
  const factory RecordsEvent.add(int value) = RecordsEventAdd;
  const factory RecordsEvent.setName(int value) = RecordsEventSetName;
}
