import 'package:flutter/material.dart';
import 'package:flutter_counter_shooter/logic/game/protagonist/protagonist.dart';
import 'package:flutter_counter_shooter/ui/game/protagonist/gamer.dart';

class ProtagonistView extends StatelessWidget {
  const ProtagonistView({
    super.key,
    required this.protagonist,
  });

  final Protagonist protagonist;

  @override
  Widget build(BuildContext context) => Positioned(
        left: protagonist.xOrigin,
        top: protagonist.yOrigin,
        child: Transform.rotate(
          angle: protagonist.angle,
          child: Gamer(size: protagonist.size.x),
        ),
      );
}
