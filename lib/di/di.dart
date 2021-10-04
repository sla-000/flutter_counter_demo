import 'package:flutter_counter_shooter/logic/blocs/game_score/bloc.dart';
import 'package:flutter_counter_shooter/logic/game/scene_data.dart';
import 'package:get_it/get_it.dart';

final GetIt di = GetIt.I;

void diInit() {
  di.registerLazySingleton<GameScoreBloc>(
    () => GameScoreBloc(),
    dispose: (GameScoreBloc bloc) => bloc.close(),
  );
}

void diDispose() {
  di.reset(dispose: true);
}

void addSceneDataToDi(SceneData newSceneData) => di.registerLazySingleton<SceneData>(() => newSceneData);
