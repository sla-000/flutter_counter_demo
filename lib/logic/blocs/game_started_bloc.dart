import 'dart:async';

import 'package:rxdart/rxdart.dart';

class GameStartedBloc {
  final BehaviorSubject<bool> _gameStartedSubject =
      BehaviorSubject<bool>.seeded(false);

  Stream<bool> get stream => _gameStartedSubject.stream;

  bool get value => _gameStartedSubject.value;

  void start() {
    if (!_gameStartedSubject.isClosed) {
      _gameStartedSubject.add(true);
    }
  }

  void dispose() => _gameStartedSubject.close();
}
