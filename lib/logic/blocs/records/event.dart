import 'package:freezed_annotation/freezed_annotation.dart';

part 'event.freezed.dart';

@freezed
class RecordsEvent with _$RecordsEvent {
  const factory RecordsEvent.fetch() = RecordsEventFetch;
  const factory RecordsEvent.upload() = RecordsEventUpload;
  const factory RecordsEvent.setRecord(int value) = RecordsEventSetRecord;
  const factory RecordsEvent.setName(String name) = RecordsEventSetName;
}
