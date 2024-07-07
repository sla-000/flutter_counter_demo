import 'package:flutter/cupertino.dart';
import 'package:flutter_counter_shooter/l10n/generated/l10n.dart';

extension ContextExtension on BuildContext {
  int cacheSize(double size) =>
      (MediaQuery.of(this).devicePixelRatio * size).ceil();
  AppLocalizations get l10n => AppLocalizations.of(this);
}
