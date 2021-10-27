import 'package:freezed_annotation/freezed_annotation.dart';

part 'state.freezed.dart';

enum GameState {
  waitStart,
  started,
  finished,
}

@freezed
class ScoreState with _$ScoreState {
  const factory ScoreState({
    @Default(0) int score,
    @Default(GameState.waitStart) GameState gameState,
  }) = _ScoreState;

  const ScoreState._();

  bool get isStarted => gameState == GameState.started;

  bool get isFinished => gameState == GameState.finished;

  bool get isWaitStart => gameState == GameState.waitStart;
}
