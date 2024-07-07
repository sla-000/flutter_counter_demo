import 'package:freezed_annotation/freezed_annotation.dart';

part 'state.freezed.dart';

@freezed
class FrameState with _$FrameState {
  const factory FrameState({
    @Default(0) double delta,
    @Default(0) double fps,
    @Default(0) int frame,
    @Default(false) bool enabled,
  }) = _FrameState;
}
