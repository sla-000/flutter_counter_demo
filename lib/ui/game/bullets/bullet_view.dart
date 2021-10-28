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
    return Positioned(
      left: bullet.xOrigin,
      top: bullet.yOrigin,
      child: Transform.rotate(
        angle: bullet.angle,
        child: Icon(
          Icons.cancel,
          size: bullet.size.x,
          color: Colors.yellow[600],
        ),
      ),
    );
  }
}
