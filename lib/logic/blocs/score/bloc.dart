import 'package:flutter_bloc/flutter_bloc.dart';

import 'event.dart';
import 'state.dart';

class GameScoreBloc extends Bloc<GameScoreEvent, GameScoreState> {
  GameScoreBloc() : super(const GameScoreState()) {
    on<GameScoreEventShoot>(_onShoot);
    on<GameScoreEventKill>(_onKill);
    on<GameScoreEventDead>(_onDead);
  }

  void _onShoot(GameScoreEventShoot _, Emitter<GameScoreState> emit) {
    if (state.gameStarted) {
      if (state.score > 0) {
        emit(state.copyWith(score: state.score - 1));
      }
    } else {
      emit(state.copyWith(score: state.score + 1));

      if (state.score > 2) {
        emit(state.copyWith(gameStarted: true));
      }
    }
  }

  void _onKill(GameScoreEventKill _, Emitter<GameScoreState> emit) {
    if (state.gameStarted) {
      emit(state.copyWith(score: state.score + 5));
    }
  }

  void _onDead(GameScoreEventDead _, Emitter<GameScoreState> emit) {
    emit(state.copyWith(gameStarted: false));
  }
}
