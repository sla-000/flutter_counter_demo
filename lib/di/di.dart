import 'package:flutter_counter_shooter/logic/blocs/bombs/bloc.dart';
import 'package:flutter_counter_shooter/logic/blocs/bombs/repo.dart';
import 'package:flutter_counter_shooter/logic/blocs/bullets/bloc.dart';
import 'package:flutter_counter_shooter/logic/blocs/frame/bloc.dart';
import 'package:flutter_counter_shooter/logic/blocs/game_score/bloc.dart';
import 'package:flutter_counter_shooter/logic/blocs/protagonist/bloc.dart';
import 'package:flutter_counter_shooter/logic/blocs/scene/repo.dart';
import 'package:flutter_counter_shooter/logic/blocs/scene/scene.dart';
import 'package:flutter_counter_shooter/logic/blocs/spawn/bloc.dart';
import 'package:flutter_counter_shooter/logic/blocs/spawn/repo.dart';
import 'package:flutter_counter_shooter/logic/blocs/waves/bloc.dart';
import 'package:flutter_counter_shooter/logic/blocs/waves/repo.dart';
import 'package:flutter_counter_shooter/logic/game/repo.dart';
import 'package:get_it/get_it.dart';

final GetIt di = GetIt.I;

void diInit() {
  di.registerLazySingleton<FrameBloc>(
    () => FrameBloc(),
    dispose: (FrameBloc bloc) => bloc.close(),
  );

  di.registerLazySingleton<GameScoreBloc>(
    () => GameScoreBloc(),
    dispose: (GameScoreBloc bloc) => bloc.close(),
  );

  di.registerLazySingleton<ProtagonistBloc>(
    () => ProtagonistBloc(),
    dispose: (ProtagonistBloc bloc) => bloc.close(),
  );

  di.registerFactory<BombsClearRepo>(
    () => BombsClearRepoImpl(wavesBloc: di.get<WavesBloc>()),
  );
  di.registerLazySingleton<BombsBloc>(
    () => BombsBloc(bombsClearRepo: di.get<BombsClearRepo>()),
    dispose: (BombsBloc bloc) => bloc.close(),
  );

  di.registerLazySingleton<BulletsBloc>(
    () => BulletsBloc(),
    dispose: (BulletsBloc bloc) => bloc.close(),
  );

  di.registerFactory<WavesRepo>(
    () => WavesRepoImpl(frameUpdateBloc: di.get<FrameBloc>()),
  );
  di.registerLazySingleton<WavesBloc>(
    () => WavesBloc(repo: di.get<WavesRepo>()),
    dispose: (WavesBloc bloc) => bloc.close(),
  );

  di.registerFactory<SpawnRepo>(
    () => SpawnRepoImpl(
      wavesBloc: di.get<WavesBloc>(),
    ),
  );
  di.registerLazySingleton<SpawnBloc>(
    () => SpawnBloc(repo: di.get<SpawnRepo>()),
    dispose: (SpawnBloc bloc) => bloc.close(),
  );

  di.registerFactory<SceneScoreRepo>(
    () => SceneScoreRepoImpl(gameScoreBloc: di.get<GameScoreBloc>()),
  );

  di.registerFactory<SceneWavesRepo>(
    () => SceneWavesRepoImpl(wavesBloc: di.get<WavesBloc>()),
  );

  di.registerFactory<SceneSpawnRepo>(
    () => SceneSpawnRepoImpl(bombSpawnBloc: di.get<SpawnBloc>()),
  );

  di.registerLazySingleton<SceneBloc>(
    () => SceneBloc(
      bombsBloc: di.get<BombsBloc>(),
      bulletsBloc: di.get<BulletsBloc>(),
      protagonistBloc: di.get<ProtagonistBloc>(),
      gameScoreRepo: di.get<SceneScoreRepo>(),
      sceneWavesRepo: di.get<SceneWavesRepo>(),
      sceneSpawnRepo: di.get<SceneSpawnRepo>(),
    ),
    dispose: (SceneBloc bloc) => bloc.close(),
  );
}

void diDispose() {
  di.reset(dispose: true);
}

void addSceneDataToDi(SceneBloc newSceneData) => di.registerLazySingleton<SceneBloc>(() => newSceneData);
