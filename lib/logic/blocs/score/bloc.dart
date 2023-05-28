import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_counter_shooter/logic/blocs/score/event.dart';
import 'package:flutter_counter_shooter/logic/blocs/score/repo.dart';
import 'package:flutter_counter_shooter/logic/blocs/score/state.dart';

class ScoreBloc extends Bloc<ScoreEvent, ScoreState> {
  ScoreBloc({
    required this.scoreRepo,
  }) : super(const ScoreState()) {
    on<ScoreEventShoot>(_onShoot);
    on<ScoreEventKill>(_onKill);
    on<ScoreEventDead>(_onDead);
    on<ScoreEventRestart>(_onRestart);
  }

  final ScoreRepo scoreRepo;

  void _onShoot(ScoreEventShoot _, Emitter<ScoreState> emit) {
    if (state.gameState == GameState.started) {
      if (state.score > 0) {
        emit(state.copyWith(score: state.score - 1));
      }
    } else if (state.gameState == GameState.waitStart) {
      emit(state.copyWith(score: state.score + 1));

      if (state.score > 2) {
        emit(state.copyWith(gameState: GameState.started));
      }
    }
  }

  void _onKill(ScoreEventKill _, Emitter<ScoreState> emit) {
    if (state.gameState == GameState.started) {
      emit(state.copyWith(score: state.score + 5));
    }
  }

  void _onDead(ScoreEventDead _, Emitter<ScoreState> emit) {
    if (state.gameState == GameState.started) {
      scoreRepo.saveRecord(state.score);

      emit(
        state.copyWith(
          gameState: GameState.finished,
          score: 0,
        ),
      );
    }
  }

  void _onRestart(ScoreEventRestart _, Emitter<ScoreState> emit) => emit(
        state.copyWith(
          gameState: GameState.started,
          score: 0,
        ),
      );
}
