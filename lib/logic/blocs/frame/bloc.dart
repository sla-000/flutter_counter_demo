import 'dart:async';
import 'dart:math';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_counter_shooter/logic/blocs/frame/event.dart';
import 'package:flutter_counter_shooter/logic/blocs/frame/repo.dart';
import 'package:flutter_counter_shooter/logic/blocs/frame/state.dart';
import 'package:flutter_counter_shooter/utils/math/ema.dart';

class FrameBloc extends Bloc<FrameEvent, FrameState> {
  FrameBloc({
    required this.frameRepo,
  }) : super(const FrameState()) {
    on<FrameEventControl>(_onControl);
    on<FrameEventUpdate>(_onUpdate);

    _enabledSubscription = frameRepo.enabled.distinct().listen((bool enable) {
      add(FrameEvent.control(enable));
    });
  }

  final FrameRepo frameRepo;

  /// 0.05 => 20fps
  static const double kMaxDelta = 0.05;

  late final StreamSubscription<bool> _enabledSubscription;

  final Stopwatch _frameStopwatch = Stopwatch();

  final ExponentialMovingAverage _ema = ExponentialMovingAverage(n: 180);

  @override
  Future<void> close() {
    _enabledSubscription.cancel();

    return super.close();
  }

  void _onControl(FrameEventControl event, Emitter<FrameState> emit) {
    emit(
      state.copyWith(
        enabled: event.enable,
        delta: 0,
      ),
    );

    if (!event.enable) {
      _frameStopwatch.stop();
    }
  }

  void _onUpdate(FrameEventUpdate event, Emitter<FrameState> emit) {
    if (!state.enabled) {
      return;
    }

    _frameStopwatch.stop();
    final delta = _frameStopwatch.elapsedMilliseconds / 1000.0;
    _frameStopwatch.reset();
    _frameStopwatch.start();

    if (delta != 0) {
      _ema.update(1 / delta);
    }

    emit(
      state.copyWith(
        delta: min(delta, kMaxDelta),
        frame: state.frame + 1,
        fps: _ema.ema,
      ),
    );
  }
}
