import 'dart:async';

import 'package:flutter_counter_shooter/logic/blocs/bombs/bloc.dart';
import 'package:flutter_counter_shooter/logic/blocs/bombs/repo.dart';
import 'package:flutter_counter_shooter/logic/blocs/bullets/bloc.dart';
import 'package:flutter_counter_shooter/logic/blocs/frame/bloc.dart';
import 'package:flutter_counter_shooter/logic/blocs/frame/repo.dart';
import 'package:flutter_counter_shooter/logic/blocs/protagonist/bloc.dart';
import 'package:flutter_counter_shooter/logic/blocs/records/bloc.dart';
import 'package:flutter_counter_shooter/logic/blocs/records/repo.dart';
import 'package:flutter_counter_shooter/logic/blocs/scene/bloc.dart';
import 'package:flutter_counter_shooter/logic/blocs/scene/repo.dart';
import 'package:flutter_counter_shooter/logic/blocs/score/bloc.dart';
import 'package:flutter_counter_shooter/logic/blocs/score/repo.dart';
import 'package:flutter_counter_shooter/logic/blocs/spawn/bloc.dart';
import 'package:flutter_counter_shooter/logic/blocs/spawn/repo.dart';
import 'package:flutter_counter_shooter/logic/blocs/waves/bloc.dart';
import 'package:flutter_counter_shooter/logic/blocs/waves/repo.dart';
import 'package:flutter_counter_shooter/logic/repo/records/firebase/firebase.dart';
import 'package:flutter_counter_shooter/logic/repo/repo.dart';
import 'package:flutter_counter_shooter/logic/repo/scene/scene.dart';
import 'package:flutter_counter_shooter/logic/service/analytics_service.dart';
import 'package:get_it/get_it.dart';

final GetIt di = GetIt.I;

void diInit() {
  di.registerLazySingleton<FrameRepo>(
    () => FrameRepoImpl(scoreBloc: di.get<ScoreBloc>()),
  );
  di.registerLazySingleton<FrameBloc>(
    () => FrameBloc(frameRepo: di.get<FrameRepo>()),
    dispose: (FrameBloc bloc) => unawaited(bloc.close()),
  );

  di.registerFactory<ScoreRepo>(
    () => ScoreRepoImpl(recordsBloc: di.get<RecordsBloc>()),
  );
  di.registerLazySingleton<ScoreBloc>(
    () => ScoreBloc(scoreRepo: di.get<ScoreRepo>()),
    dispose: (ScoreBloc bloc) => unawaited(bloc.close()),
  );

  di.registerLazySingleton<ProtagonistBloc>(
    ProtagonistBloc.new,
    dispose: (ProtagonistBloc bloc) => unawaited(bloc.close()),
  );

  di.registerFactory<BombsClearRepo>(
    () => BombsClearRepoImpl(wavesBloc: di.get<WavesBloc>()),
  );
  di.registerLazySingleton<BombsBloc>(
    () => BombsBloc(bombsClearRepo: di.get<BombsClearRepo>()),
    dispose: (BombsBloc bloc) => unawaited(bloc.close()),
  );

  di.registerLazySingleton<BulletsBloc>(
    BulletsBloc.new,
    dispose: (BulletsBloc bloc) => unawaited(bloc.close()),
  );

  di.registerFactory<WavesRepo>(
    () => WavesRepoImpl(frameUpdateBloc: di.get<FrameBloc>()),
  );
  di.registerLazySingleton<WavesBloc>(
    () => WavesBloc(repo: di.get<WavesRepo>()),
    dispose: (WavesBloc bloc) => unawaited(bloc.close()),
  );

  di.registerFactory<SpawnRepo>(
    () => SpawnRepoImpl(wavesBloc: di.get<WavesBloc>()),
  );
  di.registerLazySingleton<SpawnBloc>(
    () => SpawnBloc(repo: di.get<SpawnRepo>()),
    dispose: (SpawnBloc bloc) => unawaited(bloc.close()),
  );

  di.registerFactory<SceneScoreRepo>(
    () => SceneScoreRepoImpl(gameScoreBloc: di.get<ScoreBloc>()),
  );

  di.registerFactory<SceneWavesRepo>(
    () => SceneWavesRepoImpl(wavesBloc: di.get<WavesBloc>()),
  );

  di.registerFactory<SceneSpawnRepo>(
    () => SceneSpawnRepoImpl(bombSpawnBloc: di.get<SpawnBloc>()),
  );

  di.registerFactory<SceneFrameRepo>(
    () => SceneFrameRepoImpl(frameBloc: di.get<FrameBloc>()),
  );

  di.registerLazySingleton<SceneBloc>(
    () => SceneBloc(
      gameScoreRepo: di.get<SceneScoreRepo>(),
      sceneWavesRepo: di.get<SceneWavesRepo>(),
      sceneSpawnRepo: di.get<SceneSpawnRepo>(),
    ),
    dispose: (SceneBloc bloc) => unawaited(bloc.close()),
  );

  di.registerFactory<RecordsDbRepo>(FirebaseRecordsDbRepo.new);

  di.registerLazySingleton<RecordsBloc>(
    () => RecordsBloc(recordsDbRepo: di.get<RecordsDbRepo>()),
    dispose: (RecordsBloc bloc) => unawaited(bloc.close()),
  );

  di.registerLazySingleton<AnalyticsService>(AnalyticsService.new);
}

void diDispose() {
  unawaited(di.reset());
}
