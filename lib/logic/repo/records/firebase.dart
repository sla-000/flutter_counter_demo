import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_counter_shooter/logic/blocs/records/repo.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'firebase.freezed.dart';
part 'firebase.g.dart';

Timestamp? timestampFromJson(dynamic date) {
  print('date=$date');
  if (date is! Timestamp) {
    throw FormatException('Date is not Timestamp, runtimeType=${date.runtimeType}');
  }
  return date;
}

dynamic timestampToJson(Timestamp? timestamp) => timestamp;

@freezed
class ScoreRecord with _$ScoreRecord {
  const factory ScoreRecord({
    String? id,
    @Default('') String name,
    @Default(0) int score,
    @JsonKey(fromJson: timestampFromJson, toJson: timestampToJson) Timestamp? date,
  }) = _ScoreRecord;

  const ScoreRecord._();

  factory ScoreRecord.fromJson(Map<String, dynamic> json) => _$ScoreRecordFromJson(json);
  factory ScoreRecord.fromJsonX(String id, Map<String, dynamic> json) => ScoreRecord.fromJson(json).copyWith(id: id);

  DateTime? get dateTime => date?.toDate();
}

FirebaseFirestore get firestore => FirebaseFirestore.instance;

class FirebaseRecordsDbRepo implements RecordsDbRepo {
  @override
  Future<List<RecordData>> getRecords({
    String name = '',
  }) async {
    final QuerySnapshot snapshot =
        await firestore.collection('scores').orderBy('score', descending: true).limit(10).get();

    print('docs=${snapshot.docs}');

    await Future<void>.delayed(const Duration(seconds: 1));
    return <RecordData>[];
  }

  @override
  Future<void> addRecord({
    required String name,
    required int score,
  }) async {
    await Future<void>.delayed(const Duration(seconds: 1));
  }
}
