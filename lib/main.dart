import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_counter_shooter/di/di.dart';
import 'package:flutter_counter_shooter/logic/blocs/scene/event.dart';
import 'package:flutter_counter_shooter/logic/blocs/scene/scene.dart';
import 'package:flutter_counter_shooter/logic/blocs/score/bloc.dart';
import 'package:flutter_counter_shooter/logic/blocs/score/state.dart';
import 'package:flutter_counter_shooter/logic/game/math/vector.dart';
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
  void initState() {
    super.initState();

    RawKeyboard.instance.addListener(_handleKeyDown);
  }

  void _handleKeyDown(RawKeyEvent rawKeyEvent) {
    if (rawKeyEvent is RawKeyDownEvent) {
      final LogicalKeyboardKey key = rawKeyEvent.logicalKey;
      if (key == LogicalKeyboardKey.space) {
        di.get<SceneBloc>().add(const SceneEvent.tapButton());
      }
    }
  }

  @override
  void dispose() {
    diDispose();

    RawKeyboard.instance.removeListener(_handleKeyDown);

    super.dispose();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    final Size screenSize = MediaQuery.of(context).size;

    di.get<SceneBloc>().add(SceneEvent.resize(
          Vector(
            x: screenSize.width,
            y: screenSize.height,
          ),
        ));
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
        onPressed: () => di.get<SceneBloc>().add(const SceneEvent.tapButton()),
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
    return BlocBuilder<ScoreBloc, ScoreState>(
      bloc: di.get<ScoreBloc>(),
      buildWhen: (ScoreState previous, ScoreState current) => current.gameStarted != previous.gameStarted,
      builder: (BuildContext context, ScoreState gameScoreState) {
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
