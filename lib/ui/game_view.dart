import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_counter_shooter/di/di.dart';
import 'package:flutter_counter_shooter/logic/blocs/game_started_bloc.dart';
import 'package:flutter_counter_shooter/ui/counter_value.dart';
import 'package:flutter_counter_shooter/ui/game/game_field.dart';
import 'package:flutter_counter_shooter/ui/you_pushed_the_button_text.dart';

class GameView extends StatefulWidget {
  const GameView({
    Key? key,
  }) : super(key: key);

  @override
  _GameViewState createState() => _GameViewState();
}

class _GameViewState extends State<GameView> with TickerProviderStateMixin {
  late final AnimationController _animationController;
  late final Animation<AlignmentGeometry> _alignmentAnimation;
  late final Animation<double> _fadeAnimation;
  late final StreamSubscription<bool> _gameStartedSubscription;

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
      duration: const Duration(milliseconds: 2000),
      vsync: this,
    );
    _alignmentAnimation = CurvedAnimation(parent: _animationController, curve: Curves.easeInOutCubic).drive(
      AlignmentTween(
        begin: Alignment.center,
        end: Alignment.bottomLeft,
      ),
    );
    _fadeAnimation = ReverseAnimation(
      CurvedAnimation(
        parent: _animationController,
        curve: Curves.linear,
      ),
    );

    _gameStartedSubscription = I.get<GameStartedBloc>().stream.distinct().listen(
      (bool started) {
        if (started) {
          _animationController.forward();
        }
      },
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    _gameStartedSubscription.cancel();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        FadeTransition(
          opacity: _fadeAnimation,
          child: const Center(
            child: Padding(
              padding: EdgeInsets.only(bottom: 48),
              child: YouPushedTheButtonText(),
            ),
          ),
        ),
        AlignTransition(
          alignment: _alignmentAnimation,
          child: const Padding(
            padding: EdgeInsets.all(24.0),
            child: CounterValue(),
          ),
        ),
        const GameField(),
      ],
    );
  }
}
