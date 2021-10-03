import 'package:flutter_bloc/flutter_bloc.dart';

import 'event.dart';
import 'state.dart';

class GameScoreBloc extends Bloc<GameScoreEvent, GameScoreState> {
  GameScoreBloc() : super(const GameScoreState()) {
    on<GameScoreEventAdd>(_onAdd);
  }

  void _onAdd(GameScoreEventAdd event, Emitter<GameScoreState> emit) {
    emit(state.copyWith(score: state.score + event.value));

    if (state.score > 2) {
      emit(state.copyWith(gameStarted: true));
    }
  }
}
