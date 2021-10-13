import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_counter_shooter/di/di.dart';
import 'package:flutter_counter_shooter/logic/blocs/game_score/bloc.dart';
import 'package:flutter_counter_shooter/logic/blocs/game_score/state.dart';
import 'package:flutter_counter_shooter/logic/game/scene_data.dart';
import 'package:flutter_counter_shooter/ui/game_view.dart';

void main() {
  diInit();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter counter demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void dispose() {
    diDispose();

    super.dispose();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    final Size screenSize = MediaQuery.of(context).size;

    late final SceneData sceneData;

    if (di.isRegistered<SceneData>()) {
      sceneData = di.get<SceneData>().copyWith(
            height: screenSize.height,
            width: screenSize.width,
          );

      di.unregister<SceneData>();
    } else {
      sceneData = SceneData.init(
        height: screenSize.height,
        width: screenSize.width,
      );
    }

    addSceneDataToDi(sceneData);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ClipRect(
        child: Stack(
          children: const <Widget>[
            GameView(),
            ShiftedAppBar(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => di.get<SceneData>().buttonPressed(),
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}

class ShiftedAppBar extends StatelessWidget {
  const ShiftedAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GameScoreBloc, GameScoreState>(
      bloc: di.get<GameScoreBloc>(),
      buildWhen: (GameScoreState previous, GameScoreState current) => current.gameStarted != previous.gameStarted,
      builder: (BuildContext context, GameScoreState gameScoreState) {
        return AnimatedSlide(
          duration: const Duration(milliseconds: 1000),
          offset: gameScoreState.gameStarted ? const Offset(0, -1) : const Offset(0, 0),
          child: SizedBox(
            height: 50,
            child: AppBar(
              title: const Text('Flutter counter demo'),
            ),
          ),
        );
      },
    );
  }
}
