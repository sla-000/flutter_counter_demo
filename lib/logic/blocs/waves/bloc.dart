import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'event.dart';
import 'repo.dart';
import 'state.dart';

const int kWaveTime = 60000;

class WavesBloc extends Bloc<WavesEvent, WavesState> {
  WavesBloc({
    required WavesRepo repo,
  }) : super(const WavesState()) {
    on<WavesEventInit>(_onInit);
    on<WavesEventNextWave>(_onNextWave);
    on<WavesEventUpdate>(_onUpdate);

    _subscribe(repo);
  }

  late final StreamSubscription<int> _deltaSubscription;

  @override
  Future<void> close() {
    _deltaSubscription.cancel();

    return super.close();
  }

  void _subscribe(WavesRepo wavesRepo) {
    _deltaSubscription = wavesRepo.deltaStream().listen((int delta) {
      add(WavesEvent.update(delta));
    });
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
    final int time = state.waveTime + event.delta;

    if (time > kWaveTime) {
      emit(state.copyWith(
        waveTime: time - kWaveTime,
        count: state.count + 1,
      ));
    } else {
      emit(state.copyWith(waveTime: time));
    }
  }
}
