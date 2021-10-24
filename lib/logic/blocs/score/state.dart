import 'package:freezed_annotation/freezed_annotation.dart';

part 'state.freezed.dart';

@freezed
class ScoreState with _$ScoreState {
  const factory ScoreState({
    @Default(0) int score,
    @Default(false) bool gameStarted,
  }) = _ScoreState;
}
