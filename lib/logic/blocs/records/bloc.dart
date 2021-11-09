import 'dart:developer';
import 'dart:math' as math;

import 'package:flutter_bloc/flutter_bloc.dart';

import 'event.dart';
import 'repo.dart';
import 'state.dart';

const int kMaxNames = 5;

class RecordsBloc extends Bloc<RecordsEvent, RecordsState> {
  RecordsBloc({
    required this.recordsDbRepo,
  }) : super(const RecordsState()) {
    on<RecordsEventFetch>(_onFetch);
    on<RecordsEventUpload>(_onUpload);
    on<RecordsEventSetRecord>(_onSetRecord);
    on<RecordsEventSetName>(_onSetName);
  }

  final RecordsDbRepo recordsDbRepo;

  Future<void> _onFetch(RecordsEventFetch event, Emitter<RecordsState> emit) async {
    try {
      emit(state.copyWith(waitNetwork: true));

      final List<RecordData> records = await recordsDbRepo.getRecords(name: state.name);

      emit(state.copyWith(records: records));
    } on Exception catch (error, stackTrace) {
      log('_onFetch', name: 'RecordsBloc', error: error, stackTrace: stackTrace);
      emit(state.copyWith(lastNetworkError: 'Can\'t fetch records'));
    } finally {
      emit(state.copyWith(waitNetwork: false));
    }
  }

  Future<void> _onUpload(RecordsEventUpload event, Emitter<RecordsState> emit) async {
    try {
      emit(state.copyWith(waitNetwork: true));

      if (state.name.isEmpty || state.lastRecord == 0) {
        return;
      }

      await recordsDbRepo.addRecord(
        name: state.name,
        score: state.lastRecord,
      );
    } on Exception catch (error, stackTrace) {
      log('_onUpload', name: 'RecordsBloc', error: error, stackTrace: stackTrace);
      emit(state.copyWith(lastNetworkError: 'Can\'t upload records'));
    } finally {
      emit(state.copyWith(waitNetwork: false));
    }
  }

  void _onSetRecord(RecordsEventSetRecord event, Emitter<RecordsState> emit) {
    emit(state.copyWith(lastRecord: event.value));
  }

  void _onSetName(RecordsEventSetName event, Emitter<RecordsState> emit) {
    List<String> lastNames = List<String>.of(state.lastNames);

    if (lastNames.contains(event.name)) {
      lastNames.remove(event.name);
      lastNames.insert(0, event.name);
    } else {
      lastNames.insert(0, event.name);
      lastNames = lastNames.sublist(0, math.min(kMaxNames, lastNames.length));
    }

    emit(state.copyWith(
      name: event.name,
      lastNames: lastNames.toList(growable: false),
    ));

    add(const RecordsEvent.upload());
  }
}
