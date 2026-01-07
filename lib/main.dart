import 'dart:async';

import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_counter_shooter/app.dart';
import 'package:flutter_counter_shooter/di/di.dart';
import 'package:flutter_counter_shooter/firebase.dart';
import 'package:flutter_counter_shooter/logic/service/sound_service.dart';

Future<void> main() async {
  await runZonedGuarded<Future<void>>(
    () async {
      WidgetsFlutterBinding.ensureInitialized();

      LicenseRegistry.addLicense(() async* {
        final license = await rootBundle.loadString(
          'assets/google_fonts/OFL.txt',
        );
        yield LicenseEntryWithLineBreaks(<String>['google_fonts'], license);
      });

      runApp(
        App(
          onInit: () async {
            await Future.wait([
              firebaseInit(),
              di.get<SoundService>().load(),
            ]);

            if (!kIsWeb) {
              FlutterError.onError =
                  FirebaseCrashlytics.instance.recordFlutterFatalError;
            }
          },
        ),
      );
    },
    (Object error, StackTrace stack) {
      if (!kIsWeb) {
        FirebaseCrashlytics.instance.recordError(error, stack, fatal: true);
      }
    },
  );
}
