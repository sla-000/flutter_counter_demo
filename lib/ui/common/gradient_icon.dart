import 'package:flutter/material.dart';

class GradientIcon extends StatelessWidget {
  const GradientIcon(
    this.icon, {
    required this.size,
    required this.gradient,
    super.key,
  });

  final IconData icon;
  final double size;
  final Gradient gradient;

  @override
  Widget build(BuildContext context) => ShaderMask(
        child: SizedBox(
          width: size,
          height: size,
          child: Icon(
            icon,
            size: size,
            color: Colors.white,
          ),
        ),
        shaderCallback: (Rect bounds) {
          final rect = Rect.fromLTRB(0, 0, size, size);
          return gradient.createShader(rect);
        },
      );
}
