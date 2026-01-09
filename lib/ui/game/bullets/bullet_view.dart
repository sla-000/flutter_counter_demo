import 'package:flutter/material.dart';
import 'package:flutter_counter_shooter/logic/game/bullet/bullet.dart';
import 'package:flutter_counter_shooter/ui/common/gradient_icon.dart';

class BulletView extends StatelessWidget {
  const BulletView({
    super.key,
    required this.bullet,
  });

  final Bullet bullet;

  @override
  Widget build(BuildContext context) {
    final firstPart = bullet.animation < 0.5;

    late final colors = firstPart
        ? <Color>[
            Colors.red.shade400,
            Colors.yellow.shade400,
          ]
        : <Color>[
            Colors.yellow.shade400,
            Colors.red.shade400,
          ];

    late final animation = firstPart
        ? bullet.animation * 2
        : (bullet.animation - 0.5) * 2;

    return Positioned(
      left: bullet.xOrigin,
      top: bullet.yOrigin,
      child: Opacity(
        opacity: bullet.opacity,
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
      ),
    );
  }
}
