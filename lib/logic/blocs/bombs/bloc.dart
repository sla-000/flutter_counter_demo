import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_counter_shooter/logic/game/enemy/bomb.dart';

import 'event.dart';
import 'state.dart';

class BombsBloc extends Bloc<BombsEvent, BombsState> {
  BombsBloc() : super(const BombsState()) {
    on<BombsEventInit>(_onInit);

    on<BombsEventSetAll>(_onSetAll);

    on<BombsEventAdd>(_onAdd);
    on<BombsEventRemove>(_onRemove);

    on<BombsEventUpdate>(_onUpdate);
  }

  void _onInit(BombsEventInit event, Emitter<BombsState> emit) {
    add(const BombsEvent.setAll(<Bomb>[]));
  }

  void _onSetAll(BombsEventSetAll event, Emitter<BombsState> emit) {
    emit(state.copyWith(
      bombs: event.bombs,
    ));
  }

  void _onAdd(BombsEventAdd event, Emitter<BombsState> emit) {
    emit(state.copyWith(
      bombs: state.bombs..add(event.bomb),
    ));
  }

  void _onRemove(BombsEventRemove event, Emitter<BombsState> emit) {
    emit(state.copyWith(
      bombs: state.bombs..remove(event.bomb),
    ));
  }

  void _onUpdate(BombsEventUpdate event, Emitter<BombsState> emit) {
    emit(state.copyWith(
      bombs: state.bombs
        ..forEach(
          (Bomb element) => element.update(event.delta),
        ),
    ));
  }
}
