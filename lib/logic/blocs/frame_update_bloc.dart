import 'dart:async';

import 'package:rxdart/rxdart.dart';

class FrameUpdateBloc {
  final PublishSubject<void> _updateSubject = PublishSubject<void>();

  Stream<void> get stream => _updateSubject.stream;

  final Stopwatch _stopwatch = Stopwatch();

  void update() {
    if (!_updateSubject.isClosed) {
      _updateSubject.add(null);
    }
  }

  double getDelta() {
    _stopwatch.stop();
    final double delta = _stopwatch.elapsedMilliseconds / 1000.0;
    _stopwatch.reset();
    _stopwatch.start();

    return delta;
  }

  void dispose() => _updateSubject.close();
}
