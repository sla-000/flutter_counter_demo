import 'dart:async';

import 'package:flutter_counter_shooter/logic/blocs/bomb_spawn/repo.dart';
import 'package:flutter_counter_shooter/logic/blocs/frame_update/bloc.dart';
import 'package:flutter_counter_shooter/logic/blocs/frame_update/state.dart';
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
