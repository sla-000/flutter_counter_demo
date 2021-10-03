import 'dart:async';

import 'package:flutter_counter_shooter/di/di.dart';
import 'package:flutter_counter_shooter/logic/blocs/game_started_bloc.dart';
import 'package:rxdart/rxdart.dart';

class GameScoreBloc {
  final BehaviorSubject<int> _gameScoreSubject = BehaviorSubject<int>.seeded(0);

  Stream<int> get stream => _gameScoreSubject.stream;

  void add(int value) {
    if (!_gameScoreSubject.isClosed) {
      _gameScoreSubject.add(_gameScoreSubject.value + value);
    }

    if (_gameScoreSubject.value > 2) {
      I.get<GameStartedBloc>().start();
    }
  }

  void dispose() => _gameScoreSubject.close();
}
