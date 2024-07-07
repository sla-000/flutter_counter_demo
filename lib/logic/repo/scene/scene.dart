import 'dart:async';

import 'package:flutter_counter_shooter/logic/blocs/frame/bloc.dart';
import 'package:flutter_counter_shooter/logic/blocs/frame/state.dart';
import 'package:flutter_counter_shooter/logic/blocs/scene/repo.dart';
import 'package:flutter_counter_shooter/logic/blocs/score/bloc.dart';
import 'package:flutter_counter_shooter/logic/blocs/score/event.dart';
import 'package:flutter_counter_shooter/logic/blocs/score/state.dart';
import 'package:flutter_counter_shooter/logic/blocs/spawn/bloc.dart';
import 'package:flutter_counter_shooter/logic/blocs/spawn/event.dart';
import 'package:flutter_counter_shooter/logic/blocs/waves/bloc.dart';
import 'package:flutter_counter_shooter/logic/blocs/waves/event.dart';
import 'package:meta/meta.dart';

class SceneScoreRepoImpl implements SceneScoreRepo {
  SceneScoreRepoImpl({
    required this.gameScoreBloc,
  });

  @protected
  final ScoreBloc gameScoreBloc;

  @override
  bool get isStarted => gameScoreBloc.state.gameState == GameState.started;
  @override
  Stream<bool> isStartedStream() => gameScoreBloc.stream
      .map(
        (ScoreState scoreState) => scoreState.gameState == GameState.started,
      )
      .distinct();

  @override
  void shoot() => gameScoreBloc.add(const ScoreEvent.shoot());
  @override
  void kill() => gameScoreBloc.add(const ScoreEvent.kill());

  @override
  void dead() => gameScoreBloc.add(const ScoreEvent.dead());
}

class SceneWavesRepoImpl implements SceneWavesRepo {
  SceneWavesRepoImpl({
    required this.wavesBloc,
  });

  @protected
  final WavesBloc wavesBloc;

  @override
  void reset() => wavesBloc.add(const WavesEvent.init());
}

class SceneSpawnRepoImpl implements SceneSpawnRepo {
  SceneSpawnRepoImpl({
    required this.bombSpawnBloc,
  });

  @protected
  final SpawnBloc bombSpawnBloc;

  @override
  void reset() => bombSpawnBloc.add(const SpawnEvent.init());

  @override
  Stream<void> bombSpawnStream() => bombSpawnBloc.stream;
}

class SceneFrameRepoImpl implements SceneFrameRepo {
  SceneFrameRepoImpl({
    required this.frameBloc,
  });

  @protected
  final FrameBloc frameBloc;

  @override
  Stream<double> deltaStream() =>
      frameBloc.stream.map((FrameState frameState) => frameState.delta);
}
