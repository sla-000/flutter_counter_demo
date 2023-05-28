import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_counter_shooter/di/di.dart';
import 'package:flutter_counter_shooter/logic/blocs/score/bloc.dart';
import 'package:flutter_counter_shooter/logic/blocs/score/state.dart';
import 'package:flutter_counter_shooter/ui/counter_value.dart';
import 'package:flutter_counter_shooter/ui/game/game_field.dart';
import 'package:flutter_counter_shooter/ui/time_value.dart';
import 'package:flutter_counter_shooter/ui/wave_value.dart';
import 'package:flutter_counter_shooter/ui/you_pushed_the_button_text.dart';

class GameView extends StatefulWidget {
  const GameView({
    super.key,
    required this.onRestart,
  });

  final void Function() onRestart;

  @override
  State<GameView> createState() => _GameViewState();
}

class _GameViewState extends State<GameView> with TickerProviderStateMixin {
  late final AnimationController _animationController;
  late final Animation<AlignmentGeometry> _alignmentAnimation;
  late final Animation<double> _fadeAnimation;

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
      duration: const Duration(milliseconds: 2000),
      vsync: this,
    );
    _alignmentAnimation = CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeInOutCubic,
    ).drive(
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
  }

  @override
  void dispose() {
    _animationController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) => BlocListener<ScoreBloc, ScoreState>(
        bloc: di.get<ScoreBloc>(),
        listenWhen: (ScoreState previous, ScoreState current) =>
            current.gameState != previous.gameState,
        listener: (BuildContext context, ScoreState scoreState) {
          if (scoreState.isStarted) {
            _animationController.forward();
          }
        },
        child: Stack(
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
            GameField(
              onRestart: widget.onRestart,
            ),
            AlignTransition(
              alignment: _alignmentAnimation,
              child: const Padding(
                padding: EdgeInsets.all(24),
                child: CounterValue(),
              ),
            ),
            const Positioned(
              top: 20,
              left: 20,
              child: WaveValue(),
            ),
            const Positioned(
              top: 20,
              right: 20,
              child: TimeValue(),
            ),
          ],
        ),
      );
}
