import 'package:flutter/material.dart';
import 'package:flutter_counter_shooter/di/di.dart';
import 'package:flutter_counter_shooter/l10n/generated/l10n.dart';
import 'package:flutter_counter_shooter/theme/default_theme.dart';
import 'package:flutter_counter_shooter/theme/durations.dart';
import 'package:flutter_counter_shooter/ui/home/main.dart';
import 'package:flutter_counter_shooter/ui/splash/splash_screen.dart';
import 'package:flutter_counter_shooter/ui/splash/splash_while_wait_future.dart';
import 'package:flutter_counter_shooter/utils/context_extensions.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class App extends StatefulWidget {
  const App({
    super.key,
    required this.onInit,
  });

  final Future<void> Function() onInit;

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  late final Future<void> _splashFuture = Future.wait<void>(
    <Future<void>>[
      Future<void>.delayed(const Duration(milliseconds: 1000)),
      widget.onInit(),
    ],
  );

  @override
  void initState() {
    super.initState();

    diInit();
  }

  @override
  void dispose() {
    diDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) => SplashWhileWaitFuture(
        splashFuture: _splashFuture,
        splashScreen: AnimatedSwitcher(
          duration: kXlDuration,
          child: MaterialApp(
            home: const SplashScreen(),
            localizationsDelegates: const <LocalizationsDelegate<dynamic>>[
              AppLocalizations.delegate,
            ],
            supportedLocales: AppLocalizations.delegate.supportedLocales,
          ),
        ),
        child: AnimatedSwitcher(
          duration: kXlDuration,
          child: MaterialApp(
            onGenerateTitle: (BuildContext context) =>
                context.l10n.flutterCounterDemo,
            theme: defaultTheme(context),
            darkTheme: darkTheme(context),
            themeMode: ThemeMode.dark,
            home: const HomePage(),
            localizationsDelegates: const <LocalizationsDelegate<dynamic>>[
              AppLocalizations.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            supportedLocales: AppLocalizations.delegate.supportedLocales,
          ),
        ),
      );
}
