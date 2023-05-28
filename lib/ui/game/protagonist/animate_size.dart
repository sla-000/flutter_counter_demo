import 'package:flutter/material.dart';
import 'package:flutter_counter_shooter/theme/durations.dart';

class AnimateSize extends StatefulWidget {
  const AnimateSize({
    super.key,
    required this.child,
    this.duration = kXlDuration,
    required this.size,
    this.show = false,
  });

  final Widget child;
  final Duration duration;
  final double size;
  final bool show;

  @override
  State<AnimateSize> createState() => _AnimateSizeState();
}

class _AnimateSizeState extends State<AnimateSize>
    with SingleTickerProviderStateMixin {
  late final AnimationController _animationController;

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
      duration: widget.duration,
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
  void didUpdateWidget(covariant AnimateSize oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (widget.show != oldWidget.show) {
      _animate();
    }
  }

  @override
  Widget build(BuildContext context) => Transform.scale(
        scale: _animationController.value,
        child: widget.child,
      );

  void _animate() {
    if (widget.show) {
      _animationController.forward();
    } else {
      _animationController.reverse();
    }
  }
}
