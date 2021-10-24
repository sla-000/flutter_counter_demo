import 'dart:async';

import 'package:flutter_counter_shooter/logic/blocs/bombs/repo.dart';
import 'package:flutter_counter_shooter/logic/blocs/frame/bloc.dart';
import 'package:flutter_counter_shooter/logic/blocs/frame/state.dart';
import 'package:flutter_counter_shooter/logic/blocs/scene/repo.dart';
import 'package:flutter_counter_shooter/logic/blocs/score/bloc.dart';
import 'package:flutter_counter_shooter/logic/blocs/score/event.dart';
import 'package:flutter_counter_shooter/logic/blocs/score/state.dart';
import 'package:flutter_counter_shooter/logic/blocs/spawn/bloc.dart';
import 'package:flutter_counter_shooter/logic/blocs/spawn/event.dart';
import 'package:flutter_counter_shooter/logic/blocs/spawn/repo.dart';
import 'package:flutter_counter_shooter/logic/blocs/waves/bloc.dart';
import 'package:flutter_counter_shooter/logic/blocs/waves/event.dart';
import 'package:flutter_counter_shooter/logic/blocs/waves/repo.dart';
import 'package:flutter_counter_shooter/logic/blocs/waves/state.dart';

class WavesRepoImpl implements WavesRepo {
  WavesRepoImpl({
    required this.frameUpdateBloc,
  });

  final FrameBloc frameUpdateBloc;

  @override
  Stream<int> deltaStream() => frameUpdateBloc.stream.map(
        (FrameState frameUpdateState) => (frameUpdateState.delta * 1000).toInt(),
      );
}

class SpawnRepoImpl implements SpawnRepo {
  SpawnRepoImpl({
    required this.wavesBloc,
  });

  final WavesBloc wavesBloc;

  @override
  Stream<SpawnModel> get() => wavesBloc.stream.map((WavesState wavesState) => SpawnModel(
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

class SceneScoreRepoImpl implements SceneScoreRepo {
  SceneScoreRepoImpl({
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

class SceneWavesRepoImpl implements SceneWavesRepo {
  SceneWavesRepoImpl({
    required this.wavesBloc,
  });

  final WavesBloc wavesBloc;

  @override
  void reset() => wavesBloc.add(const WavesEvent.init());
}

class SceneSpawnRepoImpl implements SceneSpawnRepo {
  SceneSpawnRepoImpl({
    required this.bombSpawnBloc,
  });

  final SpawnBloc bombSpawnBloc;

  @override
  void reset() => bombSpawnBloc.add(const SpawnEvent.init());

  @override
  Stream<void> bombSpawnStream() => bombSpawnBloc.stream;
}
