// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'score_record.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ScoreRecord _$ScoreRecordFromJson(Map<String, dynamic> json) {
  return _ScoreRecord.fromJson(json);
}

/// @nodoc
mixin _$ScoreRecord {
  String get name => throw _privateConstructorUsedError;
  int get score =>
      throw _privateConstructorUsedError; // ignore: invalid_annotation_target
  @JsonKey(fromJson: timestampFromJson, toJson: timestampToJson)
  Timestamp? get date =>
      throw _privateConstructorUsedError; // ignore: invalid_annotation_target
  @JsonKey(includeFromJson: false, includeToJson: false)
  String? get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ScoreRecordCopyWith<ScoreRecord> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScoreRecordCopyWith<$Res> {
  factory $ScoreRecordCopyWith(
          ScoreRecord value, $Res Function(ScoreRecord) then) =
      _$ScoreRecordCopyWithImpl<$Res, ScoreRecord>;
  @useResult
  $Res call(
      {String name,
      int score,
      @JsonKey(fromJson: timestampFromJson, toJson: timestampToJson)
      Timestamp? date,
      @JsonKey(includeFromJson: false, includeToJson: false) String? id});
}

/// @nodoc
class _$ScoreRecordCopyWithImpl<$Res, $Val extends ScoreRecord>
    implements $ScoreRecordCopyWith<$Res> {
  _$ScoreRecordCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? score = null,
    Object? date = freezed,
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as Timestamp?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ScoreRecordCopyWith<$Res>
    implements $ScoreRecordCopyWith<$Res> {
  factory _$$_ScoreRecordCopyWith(
          _$_ScoreRecord value, $Res Function(_$_ScoreRecord) then) =
      __$$_ScoreRecordCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      int score,
      @JsonKey(fromJson: timestampFromJson, toJson: timestampToJson)
      Timestamp? date,
      @JsonKey(includeFromJson: false, includeToJson: false) String? id});
}

/// @nodoc
class __$$_ScoreRecordCopyWithImpl<$Res>
    extends _$ScoreRecordCopyWithImpl<$Res, _$_ScoreRecord>
    implements _$$_ScoreRecordCopyWith<$Res> {
  __$$_ScoreRecordCopyWithImpl(
      _$_ScoreRecord _value, $Res Function(_$_ScoreRecord) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? score = null,
    Object? date = freezed,
    Object? id = freezed,
  }) {
    return _then(_$_ScoreRecord(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as Timestamp?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ScoreRecord extends _ScoreRecord {
  const _$_ScoreRecord(
      {this.name = '',
      this.score = 0,
      @JsonKey(fromJson: timestampFromJson, toJson: timestampToJson) this.date,
      @JsonKey(includeFromJson: false, includeToJson: false) this.id})
      : super._();

  factory _$_ScoreRecord.fromJson(Map<String, dynamic> json) =>
      _$$_ScoreRecordFromJson(json);

  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final int score;
// ignore: invalid_annotation_target
  @override
  @JsonKey(fromJson: timestampFromJson, toJson: timestampToJson)
  final Timestamp? date;
// ignore: invalid_annotation_target
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  final String? id;

  @override
  String toString() {
    return 'ScoreRecord(name: $name, score: $score, date: $date, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ScoreRecord &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.score, score) || other.score == score) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, score, date, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ScoreRecordCopyWith<_$_ScoreRecord> get copyWith =>
      __$$_ScoreRecordCopyWithImpl<_$_ScoreRecord>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ScoreRecordToJson(
      this,
    );
  }
}

abstract class _ScoreRecord extends ScoreRecord {
  const factory _ScoreRecord(
      {final String name,
      final int score,
      @JsonKey(fromJson: timestampFromJson, toJson: timestampToJson)
      final Timestamp? date,
      @JsonKey(includeFromJson: false, includeToJson: false)
      final String? id}) = _$_ScoreRecord;
  const _ScoreRecord._() : super._();

  factory _ScoreRecord.fromJson(Map<String, dynamic> json) =
      _$_ScoreRecord.fromJson;

  @override
  String get name;
  @override
  int get score;
  @override // ignore: invalid_annotation_target
  @JsonKey(fromJson: timestampFromJson, toJson: timestampToJson)
  Timestamp? get date;
  @override // ignore: invalid_annotation_target
  @JsonKey(includeFromJson: false, includeToJson: false)
  String? get id;
  @override
  @JsonKey(ignore: true)
  _$$_ScoreRecordCopyWith<_$_ScoreRecord> get copyWith =>
      throw _privateConstructorUsedError;
}
