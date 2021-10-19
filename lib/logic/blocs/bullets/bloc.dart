import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_counter_shooter/logic/game/bullet/bullet.dart';

import 'event.dart';
import 'state.dart';

class BulletsBloc extends Bloc<BulletsEvent, BulletsState> {
  BulletsBloc() : super(const BulletsState()) {
    on<BulletsEventInit>(_onInit);

    on<BulletsEventSetAll>(_onSetAll);

    on<BulletsEventAdd>(_onAdd);
    on<BulletsEventRemove>(_onRemove);

    on<BulletsEventUpdate>(_onUpdate);
  }

  void _onInit(BulletsEventInit event, Emitter<BulletsState> emit) {
    add(const BulletsEvent.setAll(<Bullet>[]));
  }

  void _onSetAll(BulletsEventSetAll event, Emitter<BulletsState> emit) {
    emit(state.copyWith(bullets: event.bullets));
  }

  void _onAdd(BulletsEventAdd event, Emitter<BulletsState> emit) {
    emit(state.copyWith(
      bullets: List<Bullet>.of(state.bullets)..add(event.bullet),
    ));
  }

  void _onRemove(BulletsEventRemove event, Emitter<BulletsState> emit) {
    emit(state.copyWith(
      bullets: List<Bullet>.of(state.bullets)..remove(event.bullet),
    ));
  }

  void _onUpdate(BulletsEventUpdate event, Emitter<BulletsState> emit) {
    emit(state.copyWith(
      bullets: state.bullets
        ..forEach(
          (Bullet element) => element.update(event.delta),
        ),
    ));
  }
}
