import 'dart:async';

import 'package:flutter_counter_shooter/logic/blocs/bomb_spawn/repo.dart';
import 'package:flutter_counter_shooter/logic/blocs/bombs/repo.dart';
import 'package:flutter_counter_shooter/logic/blocs/frame_update/bloc.dart';
import 'package:flutter_counter_shooter/logic/blocs/frame_update/state.dart';
import 'package:flutter_counter_shooter/logic/blocs/game_score/bloc.dart';
import 'package:flutter_counter_shooter/logic/blocs/game_score/event.dart';
import 'package:flutter_counter_shooter/logic/blocs/game_score/state.dart';
import 'package:flutter_counter_shooter/logic/blocs/scene/repo.dart';
import 'package:flutter_counter_shooter/logic/blocs/waves/bloc.dart';
import 'package:flutter_counter_shooter/logic/blocs/waves/repo.dart';
import 'package:flutter_counter_shooter/logic/blocs/waves/state.dart';

class WavesRepoImpl implements WavesRepo {
  WavesRepoImpl({
    required this.frameUpdateBloc,
  });

  final FrameUpdateBloc frameUpdateBloc;

  @override
  Stream<WavesModel> get() {
    return frameUpdateBloc.stream
        .map(
          (FrameUpdateState frameUpdateState) => (frameUpdateState.delta * 1000).toInt(),
        )
        .map(
          (int delta) => WavesModel(delta: delta),
        );
  }
}

class BombSpawnRepoImpl implements BombSpawnRepo {
  BombSpawnRepoImpl({
    required this.wavesBloc,
  });

  final WavesBloc wavesBloc;

  @override
  Stream<BombSpawnModel> get() => wavesBloc.stream.map((WavesState wavesState) => BombSpawnModel(
        count: wavesState.count,
        time: wavesState.waveTime,
      ));
}

class BombsClearRepoImpl implements BombsClearRepo {
  BombsClearRepoImpl({
    required this.wavesBloc,
  });

  final WavesBloc wavesBloc;

  @override
  Stream<void> get() => wavesBloc.stream.map((WavesState wavesState) => wavesState.count).distinct();
}

class GameScoreRepoImpl implements GameScoreRepo {
  GameScoreRepoImpl({
    required this.gameScoreBloc,
  });

  final GameScoreBloc gameScoreBloc;

  @override
  bool get isStarted => gameScoreBloc.state.gameStarted;
  @override
  Stream<bool> isStartedStream() => gameScoreBloc.stream.map((GameScoreState event) => event.gameStarted).distinct();

  @override
  void shoot() => gameScoreBloc.add(const GameScoreEvent.shoot());
  @override
  void kill() => gameScoreBloc.add(const GameScoreEvent.kill());
}
