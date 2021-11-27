import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_counter_shooter/debug.dart';
import 'package:flutter_counter_shooter/di/di.dart';
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
