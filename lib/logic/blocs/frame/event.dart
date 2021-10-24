import 'package:freezed_annotation/freezed_annotation.dart';

part 'event.freezed.dart';

@freezed
class FrameEvent with _$FrameEvent {
  const factory FrameEvent.control(bool enable) = FrameEventControl;
  const factory FrameEvent.update() = FrameEventUpdate;
}
