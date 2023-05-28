import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_counter_shooter/logic/blocs/spawn/event.dart';
import 'package:flutter_counter_shooter/logic/blocs/spawn/repo.dart';
import 'package:flutter_counter_shooter/logic/blocs/spawn/state.dart';

class SpawnBloc extends Bloc<SpawnEvent, BombSpawnState> {
  SpawnBloc({
    required SpawnRepo repo,
  }) : super(const BombSpawnState()) {
    on<SpawnEventInit>(_onInit);
    on<SpawnEventSpawn>(_onSpawn);

    _subscribe(repo);
  }

  late final StreamSubscription<SpawnModel> _repoSubscription;

  @override
  Future<void> close() {
    _repoSubscription.cancel();

    return super.close();
  }

  void _onInit(SpawnEventInit _, Emitter<BombSpawnState> emit) {
    emit(
      state.copyWith(
        lastSpawn: 0,
      ),
    );
  }

  void _onSpawn(SpawnEventSpawn event, Emitter<BombSpawnState> emit) {
    emit(
      state.copyWith(
        lastSpawn: event.time,
      ),
    );
  }

  void _subscribe(SpawnRepo repo) {
    _repoSubscription = repo.get().listen((SpawnModel bombSpawnModel) {
      bombSpawnModel.count;
      bombSpawnModel.time;

      if (state.lastSpawn == 0 ||
          bombSpawnModel.time < state.lastSpawn ||
          _calcSpawnPeriod(bombSpawnModel)) {
        add(SpawnEvent.spawn(bombSpawnModel.time));
      }
    });
  }

  bool _calcSpawnPeriod(SpawnModel bombSpawnModel) =>
      bombSpawnModel.time >
      state.lastSpawn + 2000 - (bombSpawnModel.count * 50);
}
