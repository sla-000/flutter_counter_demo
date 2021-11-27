import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_counter_shooter/theme/default_theme.dart';

import 'digital_theme.dart';
import 'event.dart';
import 'state.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  ThemeBloc() : super(const ThemeState()) {
    on<ThemeEventGameOn>(_onGameOn);
    on<ThemeEventGameOff>(_onGameOff);
  }

  void _onGameOn(ThemeEventGameOn event, Emitter<ThemeState> emit) {
    emit(state.copyWith(
      theme: digitalTheme(event.context),
    ));
  }

  void _onGameOff(ThemeEventGameOff event, Emitter<ThemeState> emit) {
    emit(state.copyWith(
      theme: defaultTheme(event.context),
    ));
  }
}
