import 'package:flutter/cupertino.dart';

extension ContextExtension on BuildContext {
  int cacheSize(double size) => (MediaQuery.of(this).devicePixelRatio * size).ceil();
}
