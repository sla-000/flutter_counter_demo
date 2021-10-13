import 'package:flutter/material.dart';

class GamerIcon extends StatelessWidget {
  const GamerIcon({
    Key? key,
    required this.size,
  }) : super(key: key);

  final double size;

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: const Offset(0, -7),
      child: Icon(
        Icons.android_outlined,
        color: Colors.green[700],
        size: size,
      ),
    );
  }
}
