import 'package:flutter_bloc/flutter_bloc.dart';

import 'event.dart';
import 'state.dart';

class ScoreBloc extends Bloc<ScoreEvent, ScoreState> {
  ScoreBloc() : super(const ScoreState()) {
    on<ScoreEventShoot>(_onShoot);
    on<ScoreEventKill>(_onKill);
    on<ScoreEventDead>(_onDead);
  }

  void _onShoot(ScoreEventShoot _, Emitter<ScoreState> emit) {
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

  void _onKill(ScoreEventKill _, Emitter<ScoreState> emit) {
    if (state.gameStarted) {
      emit(state.copyWith(score: state.score + 5));
    }
  }

  void _onDead(ScoreEventDead _, Emitter<ScoreState> emit) {
    emit(state.copyWith(gameStarted: false));
  }
}
