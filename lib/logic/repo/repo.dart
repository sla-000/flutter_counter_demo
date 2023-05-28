import 'dart:async';

import 'package:flutter_counter_shooter/logic/blocs/bombs/repo.dart';
import 'package:flutter_counter_shooter/logic/blocs/frame/bloc.dart';
import 'package:flutter_counter_shooter/logic/blocs/frame/repo.dart';
import 'package:flutter_counter_shooter/logic/blocs/frame/state.dart';
import 'package:flutter_counter_shooter/logic/blocs/records/bloc.dart';
import 'package:flutter_counter_shooter/logic/blocs/records/event.dart';
import 'package:flutter_counter_shooter/logic/blocs/score/bloc.dart';
import 'package:flutter_counter_shooter/logic/blocs/score/repo.dart';
import 'package:flutter_counter_shooter/logic/blocs/score/state.dart';
import 'package:flutter_counter_shooter/logic/blocs/spawn/repo.dart';
import 'package:flutter_counter_shooter/logic/blocs/waves/bloc.dart';
import 'package:flutter_counter_shooter/logic/blocs/waves/repo.dart';
import 'package:flutter_counter_shooter/logic/blocs/waves/state.dart';

class WavesRepoImpl implements WavesRepo {
  WavesRepoImpl({
    required this.frameUpdateBloc,
  });

  final FrameBloc frameUpdateBloc;

  @override
  Stream<int> deltaStream() => frameUpdateBloc.stream.map(
        (FrameState frameUpdateState) =>
            (frameUpdateState.delta * 1000).toInt(),
      );
}

class SpawnRepoImpl implements SpawnRepo {
  SpawnRepoImpl({
    required this.wavesBloc,
  });

  final WavesBloc wavesBloc;

  @override
  Stream<SpawnModel> get() => wavesBloc.stream.map(
        (WavesState wavesState) => SpawnModel(
          count: wavesState.count,
          time: wavesState.waveTime,
        ),
      );
}

class BombsClearRepoImpl implements BombsClearRepo {
  BombsClearRepoImpl({
    required this.wavesBloc,
  });

  final WavesBloc wavesBloc;

  @override
  Stream<void> get() => wavesBloc.stream
      .map((WavesState wavesState) => wavesState.count)
      .distinct();
}

class ScoreRepoImpl implements ScoreRepo {
  ScoreRepoImpl({
    required this.recordsBloc,
  });

  final RecordsBloc recordsBloc;

  @override
  void saveRecord(int score) {
    recordsBloc.add(RecordsEvent.setRecord(score));
    recordsBloc.add(const RecordsEvent.fetch());
  }
}

class FrameRepoImpl implements FrameRepo {
  FrameRepoImpl({
    required this.scoreBloc,
  });

  final ScoreBloc scoreBloc;

  @override
  Stream<bool> get enabled =>
      scoreBloc.stream.map((ScoreState scoreState) => scoreState.isStarted);
}
