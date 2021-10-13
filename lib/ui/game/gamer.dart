import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_counter_shooter/di/di.dart';
import 'package:flutter_counter_shooter/logic/blocs/game_score/bloc.dart';
import 'package:flutter_counter_shooter/logic/blocs/game_score/state.dart';

class Gamer extends StatefulWidget {
  const Gamer({
    Key? key,
    required this.size,
  }) : super(key: key);

  final double size;

  @override
  _GamerState createState() => _GamerState();
}

class _GamerState extends State<Gamer> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GameScoreBloc, GameScoreState>(
      bloc: di.get<GameScoreBloc>(),
      buildWhen: (GameScoreState previous, GameScoreState current) => current.gameStarted != previous.gameStarted,
      builder: (_, GameScoreState state) {
        return _AnimatedSizeIcon(
          size: widget.size,
          show: state.gameStarted,
        );
      },
    );
  }
}

class _AnimatedSizeIcon extends StatefulWidget {
  const _AnimatedSizeIcon({
    Key? key,
    required this.size,
    this.show = false,
  }) : super(key: key);

  final double size;
  final bool show;

  @override
  State<_AnimatedSizeIcon> createState() => _AnimatedSizeIconState();
}

class _AnimatedSizeIconState extends State<_AnimatedSizeIcon> with SingleTickerProviderStateMixin {
  late final AnimationController _animationController;

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
      duration: const Duration(milliseconds: 1000),
      vsync: this,
    );

    _animationController.addListener(() => setState(() {}));

    _animate();
  }

  @override
  void dispose() {
    _animationController.dispose();

    super.dispose();
  }

  @override
  void didUpdateWidget(covariant _AnimatedSizeIcon oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (widget.show != oldWidget.show) {
      _animate();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Transform.scale(
      scale: _animationController.value,
      child: _Icon(size: widget.size),
    );
  }

  void _animate() {
    if (widget.show) {
      _animationController.forward();
    } else {
      _animationController.reset();
    }
  }
}

class _Icon extends StatelessWidget {
  const _Icon({
    Key? key,
    required this.size,
  }) : super(key: key);

  final double size;

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: const Offset(0, -7),
      child: Icon(
        Icons.android_outlined,
        color: Colors.green[700],
        size: size,
      ),
    );
  }
}
