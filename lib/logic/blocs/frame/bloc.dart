import 'package:flutter_bloc/flutter_bloc.dart';

import 'event.dart';
import 'state.dart';

class FrameBloc extends Bloc<FrameEvent, FrameState> {
  FrameBloc() : super(const FrameState()) {
    on<FrameEventControl>(_onControl);
    on<FrameEventUpdate>(_onUpdate);
  }

  final Stopwatch _stopwatch = Stopwatch();

  void _onControl(FrameEventControl event, Emitter<FrameState> emit) {
    if (event.enable) {
      _stopwatch.stop();
    } else {
      _stopwatch.reset();
      _stopwatch.start();
    }
  }

  void _onUpdate(FrameEventUpdate event, Emitter<FrameState> emit) {
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
