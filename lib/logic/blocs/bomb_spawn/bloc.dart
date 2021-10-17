import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'event.dart';
import 'repo.dart';
import 'state.dart';

class BombSpawnBloc extends Bloc<BombSpawnEvent, BombSpawnState> {
  BombSpawnBloc({
    required this.repo,
  }) : super(const BombSpawnState()) {
    on<BombSpawnEventInit>(_onInit);
    on<BombSpawnEventSpawn>(_onSpawn);

    _subscribe();
  }

  final BombSpawnRepo repo;

  late final StreamSubscription<BombSpawnModel> _repoSubscription;

  @override
  Future<void> close() {
    _repoSubscription.cancel();

    return super.close();
  }

  void _onInit(BombSpawnEventInit _, Emitter<BombSpawnState> emit) {
    emit(state.copyWith(
      lastSpawn: 0,
    ));
  }

  void _onSpawn(BombSpawnEventSpawn event, Emitter<BombSpawnState> emit) {
    emit(state.copyWith(
      lastSpawn: event.time,
    ));
  }

  void _subscribe() {
    _repoSubscription = repo.get().listen((BombSpawnModel bombSpawnModel) {
      bombSpawnModel.count;
      bombSpawnModel.time;

      if (state.lastSpawn == null || bombSpawnModel.time < state.lastSpawn || _calcSpawnPeriod(bombSpawnModel)) {
        add(BombSpawnEvent.spawn(bombSpawnModel.time));
      }
    });
  }

  bool _calcSpawnPeriod(BombSpawnModel bombSpawnModel) =>
      bombSpawnModel.time > state.lastSpawn + 500 - bombSpawnModel.count;
}
