import 'package:freezed_annotation/freezed_annotation.dart';

part 'state.freezed.dart';

@freezed
class WavesState with _$WavesState {
  const factory WavesState({
    @Default(0) int count,
    @Default(0) int waveTime,
  }) = _WavesState;
}
