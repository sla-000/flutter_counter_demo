import 'dart:math' as math;

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_counter_shooter/logic/blocs/records/event.dart';
import 'package:flutter_counter_shooter/logic/blocs/records/repo.dart';
import 'package:flutter_counter_shooter/logic/blocs/records/state.dart';
import 'package:meta/meta.dart';

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

  @protected
  final RecordsDbRepo recordsDbRepo;

  Future<void> _onFetch(
    RecordsEventFetch event,
    Emitter<RecordsState> emit,
  ) async {
    try {
      emit(
        state.copyWith(
          waitNetwork: true,
          showNameInput: false,
        ),
      );

      final records = await recordsDbRepo.getRecords();

      emit(
        state.copyWith(
          records: records,
          showNameInput: RecordsState.isScoreInTable(state.lastRecord, records),
        ),
      );
    } on Exception catch (_) {
      emit(state.copyWith(lastNetworkError: "Can't fetch records"));
    } finally {
      emit(state.copyWith(waitNetwork: false));
    }
  }

  Future<void> _onUpload(
    RecordsEventUpload event,
    Emitter<RecordsState> emit,
  ) async {
    try {
      emit(state.copyWith(waitNetwork: true));

      if (state.name.isEmpty || state.lastRecord == 0) {
        return;
      }

      await recordsDbRepo.addRecord(
        name: state.name,
        score: state.lastRecord,
      );

      final records = await recordsDbRepo.getRecords();

      emit(state.copyWith(records: records));
    } on Exception catch (_) {
      emit(state.copyWith(lastNetworkError: "Can't upload records"));
    } finally {
      emit(state.copyWith(waitNetwork: false));
    }
  }

  void _onSetRecord(RecordsEventSetRecord event, Emitter<RecordsState> emit) {
    emit(
      state.copyWith(
        lastRecord: event.value,
        showNameInput: RecordsState.isScoreInTable(event.value, state.records),
      ),
    );
  }

  void _onSetName(RecordsEventSetName event, Emitter<RecordsState> emit) {
    var lastNames = List<String>.of(state.lastNames);

    if (lastNames.contains(event.name)) {
      lastNames.remove(event.name);
      lastNames.insert(0, event.name);
    } else {
      lastNames.insert(0, event.name);
      lastNames = lastNames.sublist(0, math.min(kMaxNames, lastNames.length));
    }

    emit(
      state.copyWith(
        name: event.name,
        lastNames: lastNames.toList(growable: false),
        showNameInput: false,
      ),
    );

    final isNewScore = state.records
        .where((RecordData recordData) => _isInTable(recordData, event.name))
        .isEmpty;

    if (isNewScore) {
      add(const RecordsEvent.upload());
    }
  }

  bool _isInTable(RecordData recordData, String name) =>
      recordData.name == name && recordData.score == state.lastRecord;
}
