import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_counter_shooter/di/di.dart';
import 'package:flutter_counter_shooter/l10n/generated/l10n.dart';
import 'package:flutter_counter_shooter/theme/bloc.dart';
import 'package:flutter_counter_shooter/theme/durations.dart';
import 'package:flutter_counter_shooter/theme/state.dart';
import 'package:flutter_counter_shooter/ui/home/main.dart';
import 'package:flutter_counter_shooter/ui/splash/splash.dart';
import 'package:flutter_counter_shooter/utils/context_extensions.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  diInit();

  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({
    Key? key,
  }) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late final Future<FirebaseApp> firebaseApp;

  @override
  void initState() {
    super.initState();

    firebaseApp = Firebase.initializeApp();
  }

  @override
  void dispose() {
    diDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<FirebaseApp>(
      future: firebaseApp,
      builder: (BuildContext context, AsyncSnapshot<FirebaseApp> snapshot) {
        if (snapshot.hasData) {
          return AnimatedSwitcher(
            duration: xlDuration,
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
                  key: const Key('MyApp-MyHomePage'),
                );
              },
            ),
          );
        }

        return AnimatedSwitcher(
          duration: xlDuration,
          child: MaterialApp(
            home: const SplashScreen(),
            localizationsDelegates: const <LocalizationsDelegate<dynamic>>[
              AppLocalizations.delegate,
            ],
            supportedLocales: AppLocalizations.delegate.supportedLocales,
            key: const Key('MyApp-SplashScreen'),
          ),
        );
      },
    );
  }
}
