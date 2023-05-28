import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:flutter_counter_shooter/logic/blocs/records/repo.dart';
import 'package:flutter_counter_shooter/logic/repo/records/firebase/score_record.dart';
import 'package:flutter_counter_shooter/utils/firebase_utils.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

FirebaseFirestore get firestore => FirebaseFirestore.instance;

class FirebaseRecordsDbRepo implements RecordsDbRepo {
  @override
  Future<List<RecordData>> getRecords({
    String name = '',
  }) async {
    final scoresSnapshot = await firestore
        .collection(ScoreRecord.kCollectionName)
        .orderBy(
          'score',
          descending: true,
        )
        .limit(100)
        .get();

    return scoresSnapshot.docs
        .map(
          (QueryDocumentSnapshot<Map<String, dynamic>> scoreSnapshot) =>
              ScoreRecord.fromJsonId(
            scoreSnapshot.id,
            scoreSnapshot.data(),
          ),
        )
        .sorted(oldestFirst)
        .sorted(biggestScoreFirst)
        .mapIndexed(
          (int index, ScoreRecord scoreRecord) => RecordData(
            position: index,
            name: scoreRecord.name,
            score: scoreRecord.score,
            dateTime: scoreRecord.dateTime,
          ),
        )
        .toList();
  }

  @override
  Future<void> addRecord({
    required String name,
    required int score,
  }) async {
    await firestore.collection(ScoreRecord.kCollectionName).add(
          ScoreRecord(
            name: name,
            score: score,
            date: timestampFromDateTime(DateTime.now()),
          ).toJson(),
        );
  }
}

@visibleForTesting
int biggestScoreFirst(ScoreRecord a, ScoreRecord b) =>
    b.score.compareTo(a.score);

@visibleForTesting
int oldestFirst(ScoreRecord a, ScoreRecord b) {
  if (a.dateTime == null || b.dateTime == null) {
    return -1;
  }
  return a.dateTime!.compareTo(b.dateTime!);
}
