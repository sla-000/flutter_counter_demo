import 'package:flutter_bloc/flutter_bloc.dart';

import 'event.dart';
import 'state.dart';

class FrameUpdateBloc extends Bloc<FrameUpdateEvent, FrameUpdateState> {
  FrameUpdateBloc() : super(const FrameUpdateState()) {
    on<FrameUpdateEventControl>(_onControl);
    on<FrameUpdateEventUpdate>(_onUpdate);
  }

  final Stopwatch _stopwatch = Stopwatch();

  void _onControl(FrameUpdateEventControl event, Emitter<FrameUpdateState> emit) {
    if (event.enable) {
      _stopwatch.stop();
    } else {
      _stopwatch.reset();
      _stopwatch.start();
    }
  }

  void _onUpdate(FrameUpdateEventUpdate event, Emitter<FrameUpdateState> emit) {
    _stopwatch.stop();
    final double delta = _stopwatch.elapsedMilliseconds / 1000.0;
    _stopwatch.reset();
    _stopwatch.start();

    emit(state.copyWith(
      delta: delta,
      frames: state.frames + 1,
    ));
  }
}
