import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_counter_shooter/logic/blocs/bullets/event.dart';
import 'package:flutter_counter_shooter/logic/blocs/bullets/state.dart';
import 'package:flutter_counter_shooter/logic/game/bullet/bullet.dart';

class BulletsBloc extends Bloc<BulletsEvent, BulletsState> {
  BulletsBloc() : super(const BulletsState()) {
    on<BulletsEventInit>(_onInit);
    on<BulletsEventSetAll>(_onSetAll);
    on<BulletsEventAdd>(_onAdd);
    on<BulletsEventRemoveAll>(_onRemoveAll);
    on<BulletsEventUpdate>(_onUpdate);
  }

  void _onInit(BulletsEventInit event, Emitter<BulletsState> emit) {
    emit(state.copyWith(bullets: <Bullet>[]));
  }

  void _onSetAll(BulletsEventSetAll event, Emitter<BulletsState> emit) {
    emit(state.copyWith(bullets: event.bullets.toList()));
  }

  void _onAdd(BulletsEventAdd event, Emitter<BulletsState> emit) {
    final rez = List<Bullet>.of(state.bullets);

    rez.add(event.bullet);

    emit(state.copyWith(bullets: rez));
  }

  void _onRemoveAll(BulletsEventRemoveAll event, Emitter<BulletsState> emit) {
    final rez = List<Bullet>.of(state.bullets);

    rez.removeWhere((Bullet element) => event.bombs.contains(element));

    emit(state.copyWith(bullets: rez));
  }

  void _onUpdate(BulletsEventUpdate event, Emitter<BulletsState> emit) {
    for (final bomb in state.bullets) {
      bomb.update(event.delta);
    }

    emit(state.copyWith(bullets: state.bullets));
  }
}
