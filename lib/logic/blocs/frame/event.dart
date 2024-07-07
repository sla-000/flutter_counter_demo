import 'package:freezed_annotation/freezed_annotation.dart';

part 'event.freezed.dart';

@freezed
class FrameEvent with _$FrameEvent {
  // ignore: avoid_positional_boolean_parameters
  const factory FrameEvent.control(bool enable) = FrameEventControl;
  const factory FrameEvent.update() = FrameEventUpdate;
}
