import 'package:flutter_counter_shooter/logic/blocs/bomb_spawn/bloc.dart';
import 'package:flutter_counter_shooter/logic/blocs/bomb_spawn/repo.dart';
import 'package:flutter_counter_shooter/logic/blocs/bombs/bloc.dart';
import 'package:flutter_counter_shooter/logic/blocs/game_score/bloc.dart';
import 'package:flutter_counter_shooter/logic/blocs/waves/bloc.dart';
import 'package:flutter_counter_shooter/logic/game/scene_data.dart';
import 'package:get_it/get_it.dart';

final GetIt di = GetIt.I;

void diInit() {
  di.registerLazySingleton<GameScoreBloc>(
    () => GameScoreBloc(),
    dispose: (GameScoreBloc bloc) => bloc.close(),
  );

  di.registerLazySingleton<BombsBloc>(
    () => BombsBloc(),
    dispose: (BombsBloc bloc) => bloc.close(),
  );

  di.registerLazySingleton<WavesBloc>(
    () => WavesBloc(),
    dispose: (WavesBloc bloc) => bloc.close(),
  );

  di.registerLazySingleton<BombSpawnRepo>(
    () => BombSpawnRepoImpl(
      wavesBloc: di.get<WavesBloc>(),
    ),
  );

  di.registerLazySingleton<BombSpawnBloc>(
    () => BombSpawnBloc(
      repo: di.get<BombSpawnRepo>(),
    ),
    dispose: (BombSpawnBloc bloc) => bloc.close(),
  );
}

void diDispose() {
  di.reset(dispose: true);
}

void addSceneDataToDi(SceneData newSceneData) => di.registerLazySingleton<SceneData>(() => newSceneData);
