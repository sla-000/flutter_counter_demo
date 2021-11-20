import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_counter_shooter/logic/repo/records/firebase.dart';
import 'package:flutter_counter_shooter/utils/firebase_utils.dart';

FirebaseFirestore get firestore => FirebaseFirestore.instance;

Future<void> debugTap() async {
  final QuerySnapshot<Map<String, dynamic>> snapshot =
      await firestore.collection('scores').orderBy('score', descending: true).limit(10).get();

  snapshot.docs.map((QueryDocumentSnapshot<Map<String, dynamic>> e) {
    final ScoreRecord scoreRecord = ScoreRecord.fromJsonX(e.id, e.data());
    print('scoreRecord=$scoreRecord');
  }).toList();

  await firestore.collection('scores').doc('dgsdfadfgsdbfvs').set(ScoreRecord(
        name: 'Noname3',
        score: 3,
        date: timestampFromDateTime(DateTime.now()),
      ).toJson());

  await firestore.collection('scores').add(ScoreRecord(
        name: 'Noname4',
        score: 4,
        date: timestampFromDateTime(DateTime.now()),
      ).toJson());
}
