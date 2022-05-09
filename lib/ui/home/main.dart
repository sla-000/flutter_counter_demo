import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_counter_shooter/debug.dart';
import 'package:flutter_counter_shooter/di/di.dart';
import 'package:flutter_counter_shooter/logic/blocs/frame/bloc.dart';
import 'package:flutter_counter_shooter/logic/blocs/frame/state.dart';
import 'package:flutter_counter_shooter/logic/blocs/scene/event.dart';
import 'package:flutter_counter_shooter/logic/blocs/scene/scene.dart';
import 'package:flutter_counter_shooter/logic/game/math/vector.dart';
import 'package:flutter_counter_shooter/ui/app_bar/shifted_app_bar.dart';
import 'package:flutter_counter_shooter/ui/game_view.dart';
import 'package:flutter_counter_shooter/utils/context_extensions.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Size _lastScreenSize = Size.square(0);

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
    RawKeyboard.instance.removeListener(_handleKeyDown);

    super.dispose();
  }

  // BlocBuilder<FrameBloc, FrameState>(
  //       bloc: di.get<FrameBloc>(),
  //       builder: (BuildContext context, FrameState frameState) {
  //         di.get<SceneBloc>().add(SceneEvent.update(frameState.delta));
  //         di.get<FrameBloc>().add(const FrameEvent.update());
  //
  //         return Stack(
  //           children: <Widget>[
  //             if (kDebugMode)
  //               Positioned(
  //                 left: 0,
  //                 top: 0,
  //                 child: Text(
  //                   frameState.fps.toInt().toString(),
  //                   style: Theme.of(context).textTheme.bodyText2?.copyWith(
  //                         color: Theme.of(context).textTheme.bodyText2?.color?.withAlpha(30),
  //                       ),
  //                 ),
  //               ),
  //             GameElements(
  //               delta: frameState.delta,
  //             ),
  //             const RecordsView(),
  //           ],
  //         );
  //       },
  //     );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ClipRect(
        child: Stack(
          children: <Widget>[
            const Positioned(
              left: 4,
              top: 4,
              child: FpsGauge(),
            ),
            Center(
              child: ConstrainedBox(
                constraints: const BoxConstraints(
                  minWidth: 300,
                  maxWidth: 600,
                  minHeight: 500,
                  maxHeight: 800,
                ),
                child: LayoutBuilder(
                  builder: (BuildContext context, BoxConstraints constraints) {
                    final Size screenSize = constraints.biggest;

                    if (screenSize != _lastScreenSize) {
                      _lastScreenSize = screenSize;

                      di.get<SceneBloc>().add(
                            SceneEvent.resize(
                              Vector(x: screenSize.width, y: screenSize.height),
                            ),
                          );
                    }

                    return const GameView();
                  },
                ),
              ),
            ),
            const ShiftedAppBar(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          debugTap();
          di.get<SceneBloc>().add(const SceneEvent.tapButton());
        },
        tooltip: context.l10n.increment,
        child: const Icon(Icons.add),
      ),
    );
  }
}

class FpsGauge extends StatelessWidget {
  const FpsGauge({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FrameBloc, FrameState>(
      bloc: di.get<FrameBloc>(),
      buildWhen: (FrameState previous, FrameState current) => current.fps != previous.fps,
      builder: (BuildContext context, FrameState frameState) {
        return Text(
          '${frameState.fps.toInt()} fps',
          style: Theme.of(context).textTheme.bodyText2?.copyWith(
                color: Theme.of(context).textTheme.bodyText2?.color?.withAlpha(30),
              ),
        );
      },
    );
  }
}
