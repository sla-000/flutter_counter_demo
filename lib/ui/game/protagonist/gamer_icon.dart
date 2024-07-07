import 'package:flutter/material.dart';
import 'package:flutter_counter_shooter/utils/context_extensions.dart';

class GamerIcon extends StatelessWidget {
  const GamerIcon({
    super.key,
    required this.size,
  });

  final double size;

  @override
  Widget build(BuildContext context) => Image.asset(
        'assets/images/android_robot.png',
        fit: BoxFit.contain,
        width: size,
        height: size,
        cacheHeight: context.cacheSize(size),
        cacheWidth: context.cacheSize(size),
      );
}
