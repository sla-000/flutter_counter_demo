import 'dart:async';

import 'package:firebase_analytics/firebase_analytics.dart';

class AnalyticsService {
  final FirebaseAnalytics _analytics = FirebaseAnalytics.instance;

  void gameLoaded() {
    unawaited(_analytics.logEvent(name: 'game_loaded'));
  }

  void quitGame() {
    unawaited(_analytics.logEvent(name: 'game_quit'));
  }
}
