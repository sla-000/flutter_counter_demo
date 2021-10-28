import 'package:flutter/material.dart';
import 'package:flutter_counter_shooter/logic/game/enemy/bomb.dart';

class BombView extends StatelessWidget {
  const BombView({
    Key? key,
    required this.bomb,
  }) : super(key: key);

  final Bomb bomb;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: bomb.xOrigin,
      top: bomb.yOrigin,
      child: Transform.rotate(
        angle: bomb.angle,
        child: Icon(
          Icons.bolt,
          size: bomb.size.x,
          color: Colors.red[400],
        ),
      ),
    );
  }
}
