import 'package:freezed_annotation/freezed_annotation.dart';

part 'event.freezed.dart';

@freezed
class FrameUpdateEvent with _$FrameUpdateEvent {
  const factory FrameUpdateEvent.control(bool enable) = FrameUpdateEventControl;
  const factory FrameUpdateEvent.update() = FrameUpdateEventUpdate;
}
