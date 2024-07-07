import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_counter_shooter/logic/blocs/bombs/event.dart';
import 'package:flutter_counter_shooter/logic/blocs/bombs/repo.dart';
import 'package:flutter_counter_shooter/logic/blocs/bombs/state.dart';
import 'package:flutter_counter_shooter/logic/game/enemy/bomb.dart';

class BombsBloc extends Bloc<BombsEvent, BombsState> {
  BombsBloc({
    required BombsClearRepo bombsClearRepo,
  }) : super(const BombsState()) {
    on<BombsEventInit>(_onInit);
    on<BombsEventSetAll>(_onSetAll);
    on<BombsEventAdd>(_onAdd);
    on<BombsEventRemoveAll>(_onRemoveAll);
    on<BombsEventUpdate>(_onUpdate);

    _bombsClearSubscription = bombsClearRepo.get().listen((_) {
      add(const BombsEvent.init());
    });
  }

  late final StreamSubscription<void> _bombsClearSubscription;

  @override
  Future<void> close() {
    _bombsClearSubscription.cancel();

    return super.close();
  }

  void _onInit(BombsEventInit event, Emitter<BombsState> emit) {
    emit(state.copyWith(bombs: <Bomb>[]));
  }

  void _onSetAll(BombsEventSetAll event, Emitter<BombsState> emit) {
    emit(state.copyWith(bombs: event.bombs.toList()));
  }

  void _onAdd(BombsEventAdd event, Emitter<BombsState> emit) {
    final rez = List<Bomb>.of(state.bombs);

    rez.add(event.bomb);

    emit(state.copyWith(bombs: rez));
  }

  void _onRemoveAll(BombsEventRemoveAll event, Emitter<BombsState> emit) {
    final rez = List<Bomb>.of(state.bombs);

    rez.removeWhere((Bomb element) => event.bombs.contains(element));

    emit(state.copyWith(bombs: rez));
  }

  void _onUpdate(BombsEventUpdate event, Emitter<BombsState> emit) {
    for (final bomb in state.bombs) {
      bomb.update(event.delta);
    }

    emit(state.copyWith(bombs: state.bombs));
  }
}
