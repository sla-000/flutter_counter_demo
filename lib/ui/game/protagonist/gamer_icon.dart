import 'package:flutter/material.dart';
import 'package:flutter_counter_shooter/utils/context_extensions.dart';

class GamerIcon extends StatelessWidget {
  const GamerIcon({
    Key? key,
    required this.size,
  }) : super(key: key);

  final double size;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/images/android_robot.png',
      fit: BoxFit.contain,
      width: size,
      height: size,
      cacheHeight: context.cacheSize(size),
      cacheWidth: context.cacheSize(size),
    );
  }
}
