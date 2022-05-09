// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'score_record.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ScoreRecord _$ScoreRecordFromJson(Map<String, dynamic> json) {
  return _ScoreRecord.fromJson(json);
}

/// @nodoc
class _$ScoreRecordTearOff {
  const _$ScoreRecordTearOff();

  _ScoreRecord call(
      {String name = '',
      int score = 0,
      @JsonKey(fromJson: timestampFromJson, toJson: timestampToJson) Timestamp? date,
      @JsonKey(ignore: true) String? id}) {
    return _ScoreRecord(
      name: name,
      score: score,
      date: date,
      id: id,
    );
  }

  ScoreRecord fromJson(Map<String, Object> json) {
    return ScoreRecord.fromJson(json);
  }
}

/// @nodoc
const $ScoreRecord = _$ScoreRecordTearOff();

/// @nodoc
mixin _$ScoreRecord {
  String get name => throw _privateConstructorUsedError;
  int get score => throw _privateConstructorUsedError; // ignore: invalid_annotation_target
  @JsonKey(fromJson: timestampFromJson, toJson: timestampToJson)
  Timestamp? get date => throw _privateConstructorUsedError; // ignore: invalid_annotation_target
  @JsonKey(ignore: true)
  String? get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ScoreRecordCopyWith<ScoreRecord> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScoreRecordCopyWith<$Res> {
  factory $ScoreRecordCopyWith(ScoreRecord value, $Res Function(ScoreRecord) then) = _$ScoreRecordCopyWithImpl<$Res>;
  $Res call(
      {String name,
      int score,
      @JsonKey(fromJson: timestampFromJson, toJson: timestampToJson) Timestamp? date,
      @JsonKey(ignore: true) String? id});
}

/// @nodoc
class _$ScoreRecordCopyWithImpl<$Res> implements $ScoreRecordCopyWith<$Res> {
  _$ScoreRecordCopyWithImpl(this._value, this._then);

  final ScoreRecord _value;
  // ignore: unused_field
  final $Res Function(ScoreRecord) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? score = freezed,
    Object? date = freezed,
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      score: score == freezed
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as Timestamp?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$ScoreRecordCopyWith<$Res> implements $ScoreRecordCopyWith<$Res> {
  factory _$ScoreRecordCopyWith(_ScoreRecord value, $Res Function(_ScoreRecord) then) =
      __$ScoreRecordCopyWithImpl<$Res>;
  @override
  $Res call(
      {String name,
      int score,
      @JsonKey(fromJson: timestampFromJson, toJson: timestampToJson) Timestamp? date,
      @JsonKey(ignore: true) String? id});
}

/// @nodoc
class __$ScoreRecordCopyWithImpl<$Res> extends _$ScoreRecordCopyWithImpl<$Res> implements _$ScoreRecordCopyWith<$Res> {
  __$ScoreRecordCopyWithImpl(_ScoreRecord _value, $Res Function(_ScoreRecord) _then)
      : super(_value, (v) => _then(v as _ScoreRecord));

  @override
  _ScoreRecord get _value => super._value as _ScoreRecord;

  @override
  $Res call({
    Object? name = freezed,
    Object? score = freezed,
    Object? date = freezed,
    Object? id = freezed,
  }) {
    return _then(_ScoreRecord(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      score: score == freezed
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as Timestamp?,
      id: id == freezed
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
      @JsonKey(ignore: true) this.id})
      : super._();

  factory _$_ScoreRecord.fromJson(Map<String, dynamic> json) => _$$_ScoreRecordFromJson(json);

  @JsonKey(defaultValue: '')
  @override
  final String name;
  @JsonKey(defaultValue: 0)
  @override
  final int score;
  @override // ignore: invalid_annotation_target
  @JsonKey(fromJson: timestampFromJson, toJson: timestampToJson)
  final Timestamp? date;
  @override // ignore: invalid_annotation_target
  @JsonKey(ignore: true)
  final String? id;

  @override
  String toString() {
    return 'ScoreRecord(name: $name, score: $score, date: $date, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ScoreRecord &&
            (identical(other.name, name) || const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.score, score) || const DeepCollectionEquality().equals(other.score, score)) &&
            (identical(other.date, date) || const DeepCollectionEquality().equals(other.date, date)) &&
            (identical(other.id, id) || const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(score) ^
      const DeepCollectionEquality().hash(date) ^
      const DeepCollectionEquality().hash(id);

  @JsonKey(ignore: true)
  @override
  _$ScoreRecordCopyWith<_ScoreRecord> get copyWith => __$ScoreRecordCopyWithImpl<_ScoreRecord>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ScoreRecordToJson(this);
  }
}

abstract class _ScoreRecord extends ScoreRecord {
  const factory _ScoreRecord(
      {String name,
      int score,
      @JsonKey(fromJson: timestampFromJson, toJson: timestampToJson) Timestamp? date,
      @JsonKey(ignore: true) String? id}) = _$_ScoreRecord;
  const _ScoreRecord._() : super._();

  factory _ScoreRecord.fromJson(Map<String, dynamic> json) = _$_ScoreRecord.fromJson;

  @override
  String get name => throw _privateConstructorUsedError;
  @override
  int get score => throw _privateConstructorUsedError;
  @override // ignore: invalid_annotation_target
  @JsonKey(fromJson: timestampFromJson, toJson: timestampToJson)
  Timestamp? get date => throw _privateConstructorUsedError;
  @override // ignore: invalid_annotation_target
  @JsonKey(ignore: true)
  String? get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ScoreRecordCopyWith<_ScoreRecord> get copyWith => throw _privateConstructorUsedError;
}
