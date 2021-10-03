import 'package:flutter_counter_shooter/logic/blocs/frame_update_bloc.dart';
import 'package:flutter_counter_shooter/logic/blocs/game_score_bloc.dart';
import 'package:flutter_counter_shooter/logic/blocs/game_started_bloc.dart';
import 'package:flutter_counter_shooter/logic/game/scene_data.dart';
import 'package:get_it/get_it.dart';

final GetIt I = GetIt.I;

void initDi() {
  I.registerLazySingleton<GameStartedBloc>(() => GameStartedBloc());
  I.registerLazySingleton<FrameUpdateBloc>(() => FrameUpdateBloc());
  I.registerLazySingleton<GameScoreBloc>(() => GameScoreBloc());
}

void addSceneDataToDi(SceneData newSceneData) => I.registerLazySingleton<SceneData>(() => newSceneData);
