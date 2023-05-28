import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_counter_shooter/logic/blocs/protagonist/event.dart';
import 'package:flutter_counter_shooter/logic/blocs/protagonist/state.dart';
import 'package:flutter_counter_shooter/logic/game/math/vector.dart';
import 'package:flutter_counter_shooter/logic/game/protagonist/protagonist.dart';

class ProtagonistBloc extends Bloc<ProtagonistEvent, ProtagonistState> {
  ProtagonistBloc()
      : super(
          ProtagonistState(
            protagonist: Protagonist(
              position: Vector.zero(),
            ),
          ),
        ) {
    on<ProtagonistEventInit>(_onInit);
    on<ProtagonistEventShoot>(_onShoot);
    on<ProtagonistEventUpdate>(_onUpdate);
  }

  void _onInit(ProtagonistEventInit event, Emitter<ProtagonistState> emit) {
    emit(
      state.copyWith(
        protagonist: state.protagonist.copyWith(
          position: event.center,
        ),
      ),
    );
  }

  void _onShoot(ProtagonistEventShoot event, Emitter<ProtagonistState> emit) {
    state.protagonist.shoot();

    emit(state.copyWith(protagonist: state.protagonist));
  }

  void _onUpdate(ProtagonistEventUpdate event, Emitter<ProtagonistState> emit) {
    state.protagonist.update(event.delta);

    emit(state.copyWith(protagonist: state.protagonist));
  }
}
