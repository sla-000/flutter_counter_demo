import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_counter_shooter/logic/repo/records/firebase.dart';

FirebaseFirestore get firestore => FirebaseFirestore.instance;

Future<void> debugTap() async {
  final QuerySnapshot<Map<String, dynamic>> snapshot =
      await firestore.collection('scores').orderBy('score', descending: true).limit(10).get();

  snapshot.docs.map((QueryDocumentSnapshot<Map<String, dynamic>> e) {
    final ScoreRecord scoreRecord = ScoreRecord.fromJsonX(e.id, e.data());
    print('scoreRecord=$scoreRecord');
  }).toList();
}
