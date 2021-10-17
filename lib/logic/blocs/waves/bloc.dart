import 'package:flutter_bloc/flutter_bloc.dart';

import 'event.dart';
import 'state.dart';

class WavesBloc extends Bloc<WavesEvent, WavesState> {
  WavesBloc() : super(const WavesState()) {
    on<WavesEventInit>(_onInit);
    on<WavesEventNextWave>(_onNextWave);
    on<WavesEventUpdate>(_onUpdate);
  }

  void _onInit(WavesEventInit _, Emitter<WavesState> emit) {
    emit(state.copyWith(count: 0));
  }

  void _onNextWave(WavesEventNextWave _, Emitter<WavesState> emit) {
    emit(state.copyWith(
      count: state.count + 1,
      waveTime: 0,
    ));
  }

  void _onUpdate(WavesEventUpdate event, Emitter<WavesState> emit) {
    emit(state.copyWith(waveTime: state.waveTime + (event.delta * 1000).toInt()));
  }
}
