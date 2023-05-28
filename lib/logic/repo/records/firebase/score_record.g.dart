// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'score_record.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ScoreRecord _$$_ScoreRecordFromJson(Map<String, dynamic> json) =>
    _$_ScoreRecord(
      name: json['name'] as String? ?? '',
      score: json['score'] as int? ?? 0,
      date: timestampFromJson(json['date']),
    );

Map<String, dynamic> _$$_ScoreRecordToJson(_$_ScoreRecord instance) =>
    <String, dynamic>{
      'name': instance.name,
      'score': instance.score,
      'date': timestampToJson(instance.date),
    };
