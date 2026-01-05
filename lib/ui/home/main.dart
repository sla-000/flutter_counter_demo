// ignore_for_file: deprecated_member_use

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_counter_shooter/debug.dart';
import 'package:flutter_counter_shooter/di/di.dart';
import 'package:flutter_counter_shooter/logic/blocs/frame/bloc.dart';
import 'package:flutter_counter_shooter/logic/blocs/frame/state.dart';
import 'package:flutter_counter_shooter/logic/blocs/scene/bloc.dart';
import 'package:flutter_counter_shooter/logic/blocs/scene/event.dart';
import 'package:flutter_counter_shooter/logic/blocs/score/bloc.dart';
import 'package:flutter_counter_shooter/logic/blocs/score/event.dart';
import 'package:flutter_counter_shooter/logic/blocs/score/state.dart';
import 'package:flutter_counter_shooter/logic/game/math/vector.dart';
import 'package:flutter_counter_shooter/logic/service/analytics_service.dart';
import 'package:flutter_counter_shooter/ui/app_bar/shifted_app_bar.dart';
import 'package:flutter_counter_shooter/ui/game_view.dart';
import 'package:flutter_counter_shooter/utils/context_extensions.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Size _lastScreenSize = Size.zero;
  bool _isInited = false;

  @override
  void initState() {
    super.initState();

    di.get<AnalyticsService>().gameLoaded();

    RawKeyboard.instance.addListener(_handleKeyDown);
  }

  void _handleKeyDown(RawKeyEvent rawKeyEvent) {
    if (rawKeyEvent is RawKeyDownEvent) {
      final key = rawKeyEvent.logicalKey;
      if (key == LogicalKeyboardKey.space) {
        di.get<SceneBloc>().add(const SceneEvent.tapButton());
      }
    }
  }

  @override
  void dispose() {
    di.get<AnalyticsService>().quitGame();

    RawKeyboard.instance.removeListener(_handleKeyDown);

    super.dispose();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
    body: ClipRect(
      child: Stack(
        children: <Widget>[
          const Positioned(left: 4, top: 4, child: FpsGauge()),
          Center(
            child: ConstrainedBox(
              constraints: const BoxConstraints(
                minWidth: 300,
                maxWidth: 600,
                minHeight: 400,
                maxHeight: 800,
              ),
              child: LayoutBuilder(
                builder: (BuildContext context, BoxConstraints constraints) {
                  final screenSize = constraints.biggest;

                  if (screenSize != _lastScreenSize) {
                    _lastScreenSize = screenSize;

                    final size = Vector(
                      x: screenSize.width,
                      y: screenSize.height,
                    );

                    di.get<SceneBloc>().add(
                      _isInited
                          ? SceneEvent.resize(size)
                          : SceneEvent.init(size),
                    );

                    _isInited = true;
                  }

                  return GameView(
                    onRestart: () {
                      di<SceneBloc>().add(
                        SceneEvent.init(
                          Vector(x: screenSize.width, y: screenSize.height),
                        ),
                      );

                      di<ScoreBloc>().add(const ScoreEvent.restart());
                    },
                  );
                },
              ),
            ),
          ),
          const ShiftedAppBar(),
        ],
      ),
    ),
    floatingActionButton: const ShootButton(),
  );
}

class ShootButton extends StatelessWidget {
  const ShootButton({super.key});

  @override
  Widget build(BuildContext context) => BlocBuilder<ScoreBloc, ScoreState>(
    bloc: di.get<ScoreBloc>(),
    buildWhen: (ScoreState previous, ScoreState current) =>
        current.gameState != previous.gameState,
    builder: (BuildContext context, ScoreState scoreState) => AnimatedCrossFade(
      firstChild: const SizedBox.shrink(),
      secondChild: FloatingActionButton(
        onPressed: () {
          unawaited(debugTap());
          di.get<SceneBloc>().add(const SceneEvent.tapButton());
        },
        tooltip: context.l10n.increment,
        child: const Icon(Icons.add),
      ),
      crossFadeState: scoreState.gameState == GameState.finished
          ? CrossFadeState.showFirst
          : CrossFadeState.showSecond,
      duration: const Duration(milliseconds: 200),
    ),
  );
}

class FpsGauge extends StatelessWidget {
  const FpsGauge({super.key});

  @override
  Widget build(BuildContext context) => BlocBuilder<FrameBloc, FrameState>(
    bloc: di.get<FrameBloc>(),
    buildWhen: (FrameState previous, FrameState current) =>
        current.fps != previous.fps,
    builder: (BuildContext context, FrameState frameState) => Text(
      '${frameState.fps.toInt()} fps',
      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
        color: Theme.of(context).textTheme.bodyMedium?.color?.withAlpha(30),
      ),
    ),
  );
}
