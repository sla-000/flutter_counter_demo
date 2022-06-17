import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'app.dart';

void main() {
  LicenseRegistry.addLicense(() async* {
    final String license =
        await rootBundle.loadString('assets/google_fonts/OFL.txt');
    yield LicenseEntryWithLineBreaks(<String>['google_fonts'], license);
  });

  runApp(const App());
}
