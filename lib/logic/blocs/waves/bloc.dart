import 'package:flutter_bloc/flutter_bloc.dart';

import 'event.dart';
import 'state.dart';

class WavesBloc extends Bloc<WavesEvent, WavesState> {
  WavesBloc() : super(const WavesState()) {
    on<WavesEventNextWave>(_onNextWave);
    on<WavesEventUpdate>(_onUpdate);
  }

  void _onNextWave(WavesEventNextWave _, Emitter<WavesState> emit) {
    emit(state.copyWith(
      count: state.count + 1,
    ));
  }

  void _onUpdate(WavesEventUpdate event, Emitter<WavesState> emit) {
    emit(state.copyWith(
      waveTime: state.waveTime + (event.delta * 1000).toInt(),
    ));
  }
}
