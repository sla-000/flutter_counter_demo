import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_counter_shooter/firebase_options.dart';

Future<void> firebaseInit() => Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
