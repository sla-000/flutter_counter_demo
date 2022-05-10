import 'package:flutter/material.dart';
import 'package:flutter_counter_shooter/logic/game/enemy/bomb.dart';
import 'package:flutter_counter_shooter/ui/common/gradient_icon.dart';

class BombView extends StatelessWidget {
  const BombView({
    Key? key,
    required this.bomb,
  }) : super(key: key);

  final Bomb bomb;

  @override
  Widget build(BuildContext context) {
    final bool firstPart = bomb.animation < 0.5;

    late final List<Color> colors = firstPart
        ? <Color>[
            Colors.lightBlueAccent.shade400,
            Colors.lightBlueAccent.shade100,
          ]
        : <Color>[
            Colors.lightBlueAccent.shade100,
            Colors.lightBlueAccent.shade400,
          ];

    late final double animation = firstPart ? bomb.animation * 2 : (bomb.animation - 0.5) * 2;

    return Positioned(
      left: bomb.xOrigin,
      top: bomb.yOrigin,
      child: Transform.rotate(
        angle: bomb.angle,
        child: GradientIcon(
          Icons.bolt,
          size: bomb.size.x,
          gradient: LinearGradient(
            colors: colors,
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
            stops: <double>[0, animation],
          ),
        ),
      ),
    );
  }
}
