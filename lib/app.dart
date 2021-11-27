import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_counter_shooter/di/di.dart';
import 'package:flutter_counter_shooter/l10n/generated/l10n.dart';
import 'package:flutter_counter_shooter/theme/bloc.dart';
import 'package:flutter_counter_shooter/theme/durations.dart';
import 'package:flutter_counter_shooter/theme/event.dart';
import 'package:flutter_counter_shooter/theme/state.dart';
import 'package:flutter_counter_shooter/ui/home/main.dart';
import 'package:flutter_counter_shooter/ui/splash/splash_screen.dart';
import 'package:flutter_counter_shooter/ui/splash/splash_while_wait_future.dart';
import 'package:flutter_counter_shooter/utils/context_extensions.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class App extends StatefulWidget {
  const App({
    Key? key,
  }) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  void dispose() {
    diDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SplashWhileWaitFuture(
      splashFuture: Future.wait<void>(<Future<void>>[
        Future<void>.delayed(const Duration(milliseconds: 1000)),
        Firebase.initializeApp(),
        Future<void>(() => di.get<ThemeBloc>().add(ThemeEvent.gameOff(context))),
      ]),
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
        child: BlocBuilder<ThemeBloc, ThemeState>(
          bloc: di.get<ThemeBloc>(),
          builder: (BuildContext context, ThemeState themeState) {
            return MaterialApp(
              onGenerateTitle: (BuildContext context) => context.l10n.flutterCounterDemo,
              theme: themeState.theme,
              home: const HomePage(),
              localizationsDelegates: const <LocalizationsDelegate<dynamic>>[
                AppLocalizations.delegate,
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
              ],
              supportedLocales: AppLocalizations.delegate.supportedLocales,
            );
          },
        ),
      ),
    );
  }
}
