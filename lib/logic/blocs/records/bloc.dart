import 'dart:async';
import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'event.dart';
import 'repo.dart';
import 'state.dart';

class RecordsBloc extends Bloc<RecordsEvent, RecordsState> {
  RecordsBloc({
    required this.dbRepo,
  }) : super(const RecordsState()) {
    on<RecordsEventShowGlobal>(_onShowGlobal);
    on<RecordsEventFetch>(_onFetch);
    on<RecordsEventUpload>(_onUpload);
    on<RecordsEventAdd>(_onAdd);
    on<RecordsEventSetName>(_onSetName);
  }

  final DbRepo dbRepo;

  void _onShowGlobal(RecordsEventShowGlobal event, Emitter<RecordsState> emit) {
    emit(state.copyWith(
        // enabled: event.enable,
        // delta: 0,
        ));
  }

  void _onFetch(RecordsEventFetch event, Emitter<RecordsState> emit) {
    emit(state.copyWith(
        // enabled: event.enable,
        // delta: 0,
        ));
  }

  void _onUpload(RecordsEventUpload event, Emitter<RecordsState> emit) {
    emit(state.copyWith(
        // enabled: event.enable,
        // delta: 0,
        ));
  }

  void _onAdd(RecordsEventAdd event, Emitter<RecordsState> emit) {
    emit(state.copyWith(
        // enabled: event.enable,
        // delta: 0,
        ));
  }

  void _onSetName(RecordsEventSetName event, Emitter<RecordsState> emit) {
    emit(state.copyWith(
        // enabled: event.enable,
        // delta: 0,
        ));
  }
}
