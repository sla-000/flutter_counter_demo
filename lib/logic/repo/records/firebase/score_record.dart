import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_counter_shooter/utils/firebase_utils.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'score_record.freezed.dart';
part 'score_record.g.dart';

@freezed
class ScoreRecord with _$ScoreRecord {
  const factory ScoreRecord({
    @Default('') String name,
    @Default(0) int score,
    // ignore: invalid_annotation_target
    @JsonKey(fromJson: timestampFromJson, toJson: timestampToJson)
    Timestamp? date,
    // ignore: invalid_annotation_target
    @JsonKey(includeFromJson: false, includeToJson: false) String? id,
  }) = _ScoreRecord;

  const ScoreRecord._();

  factory ScoreRecord.fromJson(Map<String, dynamic> json) =>
      _$ScoreRecordFromJson(json);
  factory ScoreRecord.fromJsonId(
    String id,
    Map<String, dynamic> json,
  ) =>
      ScoreRecord.fromJson(json).copyWith(id: id);

  static const String kCollectionName = 'scores';

  DateTime? get dateTime => date?.toDate();
}
