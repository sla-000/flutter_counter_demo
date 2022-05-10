import 'package:flutter/material.dart';
import 'package:flutter_counter_shooter/logic/game/bullet/bullet.dart';

class BulletView extends StatelessWidget {
  const BulletView({
    Key? key,
    required this.bullet,
  }) : super(key: key);

  final Bullet bullet;

  @override
  Widget build(BuildContext context) {
    final bool firstPart = bullet.animation < 0.5;

    late final List<Color> colors = firstPart
        ? <Color>[
            Colors.red.shade400,
            Colors.yellow.shade400,
          ]
        : <Color>[
            Colors.yellow.shade400,
            Colors.red.shade400,
          ];

    late final double animation = firstPart ? bullet.animation * 2 : (bullet.animation - 0.5) * 2;

    return Positioned(
      left: bullet.xOrigin,
      top: bullet.yOrigin,
      child: Transform.rotate(
        angle: bullet.angle,
        child: GradientIcon(
          Icons.cancel,
          size: bullet.size.x,
          gradient: RadialGradient(
            colors: colors,
            radius: animation,
          ),
        ),
      ),
    );
  }
}

class GradientIcon extends StatelessWidget {
  const GradientIcon(
    this.icon, {
    required this.size,
    required this.gradient,
    Key? key,
  }) : super(key: key);

  final IconData icon;
  final double size;
  final Gradient gradient;

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
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
        final Rect rect = Rect.fromLTRB(0, 0, size, size);
        return gradient.createShader(rect);
      },
    );
  }
}
