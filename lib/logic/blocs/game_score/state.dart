import 'package:freezed_annotation/freezed_annotation.dart';

part 'state.freezed.dart';

@freezed
class GameScoreState with _$GameScoreState {
  const factory GameScoreState({
    @Default(0) int score,
  }) = _GameScoreState;
}
