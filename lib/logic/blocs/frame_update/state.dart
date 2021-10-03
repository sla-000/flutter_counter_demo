import 'package:freezed_annotation/freezed_annotation.dart';

part 'state.freezed.dart';

@freezed
class FrameUpdateState with _$FrameUpdateState {
  const factory FrameUpdateState({
    @Default(0) double delta,
    @Default(0) int frames,
  }) = _FrameUpdateState;
}
