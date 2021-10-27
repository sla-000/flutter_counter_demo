import 'dart:async';
import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'event.dart';
import 'repo.dart';
import 'state.dart';

class FrameBloc extends Bloc<FrameEvent, FrameState> {
  FrameBloc({
    required this.frameRepo,
  }) : super(const FrameState()) {
    on<FrameEventControl>(_onControl);
    on<FrameEventUpdate>(_onUpdate);

    _enabledSubscription = frameRepo.enabled.distinct().listen((bool enable) {
      log('enable=$enable');
      add(FrameEvent.control(enable));
    });
  }

  final FrameRepo frameRepo;

  late final StreamSubscription<bool> _enabledSubscription;

  final Stopwatch _stopwatch = Stopwatch();

  @override
  Future<void> close() {
    _enabledSubscription.cancel();

    return super.close();
  }

  void _onControl(FrameEventControl event, Emitter<FrameState> emit) {
    emit(state.copyWith(
      enabled: event.enable,
      delta: 0,
    ));

    if (!event.enable) {
      _stopwatch.stop();
    }
  }

  void _onUpdate(FrameEventUpdate event, Emitter<FrameState> emit) {
    if (!state.enabled) {
      return;
    }

    _stopwatch.stop();
    final double delta = _stopwatch.elapsedMilliseconds / 1000.0;
    _stopwatch.reset();
    _stopwatch.start();

    emit(state.copyWith(
      delta: delta,
      frame: state.frame + 1,
    ));
  }
}
