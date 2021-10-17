import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'event.dart';
import 'repo.dart';
import 'state.dart';

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
    _deltaSubscription = wavesRepo.get().map((WavesModel wavesModel) => wavesModel.delta).listen((int delta) {
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
    emit(state.copyWith(waveTime: state.waveTime + event.delta));
  }
}
