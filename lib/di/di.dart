import 'package:flutter_counter_shooter/logic/blocs/bomb_spawn/bloc.dart';
import 'package:flutter_counter_shooter/logic/blocs/bomb_spawn/repo.dart';
import 'package:flutter_counter_shooter/logic/blocs/bombs/bloc.dart';
import 'package:flutter_counter_shooter/logic/blocs/bombs/repo.dart';
import 'package:flutter_counter_shooter/logic/blocs/bullets/bloc.dart';
import 'package:flutter_counter_shooter/logic/blocs/frame_update/bloc.dart';
import 'package:flutter_counter_shooter/logic/blocs/game_score/bloc.dart';
import 'package:flutter_counter_shooter/logic/blocs/protagonist/bloc.dart';
import 'package:flutter_counter_shooter/logic/blocs/scene/scene.dart';
import 'package:flutter_counter_shooter/logic/blocs/waves/bloc.dart';
import 'package:flutter_counter_shooter/logic/blocs/waves/repo.dart';
import 'package:flutter_counter_shooter/logic/game/repo.dart';
import 'package:get_it/get_it.dart';

final GetIt di = GetIt.I;

void diInit() {
  di.registerLazySingleton<FrameUpdateBloc>(
    () => FrameUpdateBloc(),
    dispose: (FrameUpdateBloc bloc) => bloc.close(),
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
    () => WavesRepoImpl(frameUpdateBloc: di.get<FrameUpdateBloc>()),
  );
  di.registerLazySingleton<WavesBloc>(
    () => WavesBloc(repo: di.get<WavesRepo>()),
    dispose: (WavesBloc bloc) => bloc.close(),
  );

  di.registerFactory<BombSpawnRepo>(
    () => BombSpawnRepoImpl(
      wavesBloc: di.get<WavesBloc>(),
    ),
  );
  di.registerLazySingleton<BombSpawnBloc>(
    () => BombSpawnBloc(repo: di.get<BombSpawnRepo>()),
    dispose: (BombSpawnBloc bloc) => bloc.close(),
  );
}

void diDispose() {
  di.reset(dispose: true);
}

void addSceneDataToDi(SceneBloc newSceneData) => di.registerLazySingleton<SceneBloc>(() => newSceneData);
