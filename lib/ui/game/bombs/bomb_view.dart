import 'dart:async';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:flutter_counter_shooter/logic/game/enemy/bomb.dart';

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
  Widget build(BuildContext context) => Positioned(
    left: widget.bomb.xOrigin,
    top: widget.bomb.yOrigin,
    child: FadeTransition(
      opacity: _animationController,
      child: Transform.rotate(
        angle: widget.bomb.angle + math.pi / 2,
        child: Opacity(
          opacity: widget.bomb.opacity,
          child: _BombShock(size: widget.bomb.size.x),
        ),
      ),
    ),
  );
}

class _BombShock extends StatefulWidget {
  const _BombShock({
    required this.size,
  });

  final double size;

  @override
  State<_BombShock> createState() => _BombShockState();
}

class _BombShockState extends State<_BombShock> {
  final _random = math.Random(DateTime.now().microsecondsSinceEpoch);

  var _flipX = false;
  var _flipY = false;
  var _scaleX = 1.0;
  var _scaleY = 1.0;

  Timer? _timer;

  @override
  void initState() {
    super.initState();

    _timer = Timer.periodic(const Duration(milliseconds: 42), (timer) {
      setState(() {
        _flipX = _random.nextBool();
        _flipY = _random.nextBool();
        _scaleX = _random.nextDouble() * 0.4 + 0.8;
        _scaleY = _random.nextDouble() * 0.3 + 0.9;
      });
    });
  }

  @override
  void dispose() {
    _timer?.cancel();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) => Transform.scale(
    scaleX: _scaleX,
    scaleY: _scaleY,
    child: Transform.flip(
      flipX: _flipX,
      flipY: _flipY,
      child: Image.asset(
        'assets/images/shock/shock_01.webp',
        fit: BoxFit.contain,
        height: widget.size,
        width: widget.size,
        gaplessPlayback: true,
      ),
    ),
  );
}
