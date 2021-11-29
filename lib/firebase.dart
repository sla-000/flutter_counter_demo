// import 'dart:io';

import 'package:firebase_core/firebase_core.dart';

Future<FirebaseApp> firebaseInit() {
  return Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: String.fromEnvironment('COUNTER_SHOOTER_FB_KEY'),
      appId: '1:903842230586:ios:64476223a3b90cee1ca003',
      messagingSenderId: '903842230586',
      projectId: 'flutter-counter-demo-9209c',
      storageBucket: 'flutter-counter-demo-9209c.appspot.com',
      androidClientId: '903842230586-sacc4t7nmjo00jg6sjstrgnqgrlv76q8.apps.googleusercontent.com',
      iosClientId: '903842230586-sacc4t7nmjo00jg6sjstrgnqgrlv76q8.apps.googleusercontent.com',
    ),
  );
}
