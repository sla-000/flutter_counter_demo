import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_counter_shooter/di/di.dart';
import 'package:flutter_counter_shooter/logic/blocs/scene/scene.dart';
import 'package:flutter_counter_shooter/logic/blocs/score/bloc.dart';
import 'package:flutter_counter_shooter/logic/blocs/score/state.dart';
import 'package:flutter_counter_shooter/theme/bloc.dart';
import 'package:flutter_counter_shooter/theme/event.dart';
import 'package:flutter_counter_shooter/ui/game/bombs/bombs_view.dart';
import 'package:flutter_counter_shooter/ui/game/bullets/bullets_view.dart';
import 'package:flutter_counter_shooter/ui/game/protagonist/protagonist.dart';

class GameElements extends StatefulWidget {
  const GameElements({
    Key? key,
    required this.delta,
  }) : super(key: key);

  final double delta;

  @override
  State<GameElements> createState() => _GameElementsState();
}

class _GameElementsState extends State<GameElements> {
  StreamSubscription<bool>? _gameStartedSubscription;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    _gameStartedSubscription?.cancel();
    _gameStartedSubscription = di
        .get<ScoreBloc>()
        .stream
        .map((ScoreState scoreState) => scoreState.gameState == GameState.started)
        .distinct()
        .listen(
          (bool gameStarted) =>
              di.get<ThemeBloc>().add(gameStarted ? ThemeEvent.gameOn(context) : ThemeEvent.gameOff(context)),
        );
  }

  @override
  void dispose() {
    _gameStartedSubscription?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        ProtagonistView(
          protagonist: di.get<SceneBloc>().state.protagonist,
        ),
        BombsView(
          bombs: di.get<SceneBloc>().state.bombs,
        ),
        BulletsView(
          bullets: di.get<SceneBloc>().state.bullets,
        ),
      ],
    );
  }
}
