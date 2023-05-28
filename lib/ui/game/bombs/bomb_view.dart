import 'package:flutter/material.dart';
import 'package:flutter_counter_shooter/logic/game/enemy/bomb.dart';
import 'package:flutter_counter_shooter/ui/common/gradient_icon.dart';

class BombView extends StatefulWidget {
  const BombView({
    super.key,
    required this.bomb,
  });

  final Bomb bomb;

  @override
  State<BombView> createState() => _BombViewState();
}

class _BombViewState extends State<BombView> with TickerProviderStateMixin {
  late final AnimationController _animationController = AnimationController(
    duration: const Duration(milliseconds: 3000),
    vsync: this,
  )..forward();

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final firstPart = widget.bomb.animation < 0.5;

    late final colors = firstPart
        ? <Color>[
            Colors.lightBlueAccent.shade400,
            Colors.lightBlueAccent.shade100,
          ]
        : <Color>[
            Colors.lightBlueAccent.shade100,
            Colors.lightBlueAccent.shade400,
          ];

    late final animation = firstPart
        ? widget.bomb.animation * 2
        : (widget.bomb.animation - 0.5) * 2;

    return Positioned(
      left: widget.bomb.xOrigin,
      top: widget.bomb.yOrigin,
      child: FadeTransition(
        opacity: _animationController,
        child: Transform.rotate(
          angle: widget.bomb.angle,
          child: GradientIcon(
            Icons.bolt,
            size: widget.bomb.size.x,
            gradient: LinearGradient(
              colors: colors,
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              stops: <double>[0, animation],
            ),
          ),
        ),
      ),
    );
  }
}
