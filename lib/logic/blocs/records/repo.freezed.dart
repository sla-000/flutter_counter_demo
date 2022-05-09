// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'repo.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$RecordDataTearOff {
  const _$RecordDataTearOff();

  _RecordData call(
      {int position = RecordData.kPositionNA, String name = '', int score = RecordData.kScoreNA, DateTime? dateTime}) {
    return _RecordData(
      position: position,
      name: name,
      score: score,
      dateTime: dateTime,
    );
  }
}

/// @nodoc
const $RecordData = _$RecordDataTearOff();

/// @nodoc
mixin _$RecordData {
  int get position => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get score => throw _privateConstructorUsedError;
  DateTime? get dateTime => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RecordDataCopyWith<RecordData> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecordDataCopyWith<$Res> {
  factory $RecordDataCopyWith(RecordData value, $Res Function(RecordData) then) = _$RecordDataCopyWithImpl<$Res>;
  $Res call({int position, String name, int score, DateTime? dateTime});
}

/// @nodoc
class _$RecordDataCopyWithImpl<$Res> implements $RecordDataCopyWith<$Res> {
  _$RecordDataCopyWithImpl(this._value, this._then);

  final RecordData _value;
  // ignore: unused_field
  final $Res Function(RecordData) _then;

  @override
  $Res call({
    Object? position = freezed,
    Object? name = freezed,
    Object? score = freezed,
    Object? dateTime = freezed,
  }) {
    return _then(_value.copyWith(
      position: position == freezed
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      score: score == freezed
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int,
      dateTime: dateTime == freezed
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
abstract class _$RecordDataCopyWith<$Res> implements $RecordDataCopyWith<$Res> {
  factory _$RecordDataCopyWith(_RecordData value, $Res Function(_RecordData) then) = __$RecordDataCopyWithImpl<$Res>;
  @override
  $Res call({int position, String name, int score, DateTime? dateTime});
}

/// @nodoc
class __$RecordDataCopyWithImpl<$Res> extends _$RecordDataCopyWithImpl<$Res> implements _$RecordDataCopyWith<$Res> {
  __$RecordDataCopyWithImpl(_RecordData _value, $Res Function(_RecordData) _then)
      : super(_value, (v) => _then(v as _RecordData));

  @override
  _RecordData get _value => super._value as _RecordData;

  @override
  $Res call({
    Object? position = freezed,
    Object? name = freezed,
    Object? score = freezed,
    Object? dateTime = freezed,
  }) {
    return _then(_RecordData(
      position: position == freezed
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      score: score == freezed
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int,
      dateTime: dateTime == freezed
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

class _$_RecordData extends _RecordData {
  const _$_RecordData(
      {this.position = RecordData.kPositionNA, this.name = '', this.score = RecordData.kScoreNA, this.dateTime})
      : super._();

  @JsonKey(defaultValue: RecordData.kPositionNA)
  @override
  final int position;
  @JsonKey(defaultValue: '')
  @override
  final String name;
  @JsonKey(defaultValue: RecordData.kScoreNA)
  @override
  final int score;
  @override
  final DateTime? dateTime;

  @override
  String toString() {
    return 'RecordData(position: $position, name: $name, score: $score, dateTime: $dateTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RecordData &&
            (identical(other.position, position) || const DeepCollectionEquality().equals(other.position, position)) &&
            (identical(other.name, name) || const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.score, score) || const DeepCollectionEquality().equals(other.score, score)) &&
            (identical(other.dateTime, dateTime) || const DeepCollectionEquality().equals(other.dateTime, dateTime)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(position) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(score) ^
      const DeepCollectionEquality().hash(dateTime);

  @JsonKey(ignore: true)
  @override
  _$RecordDataCopyWith<_RecordData> get copyWith => __$RecordDataCopyWithImpl<_RecordData>(this, _$identity);
}

abstract class _RecordData extends RecordData {
  const factory _RecordData({int position, String name, int score, DateTime? dateTime}) = _$_RecordData;
  const _RecordData._() : super._();

  @override
  int get position => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  int get score => throw _privateConstructorUsedError;
  @override
  DateTime? get dateTime => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$RecordDataCopyWith<_RecordData> get copyWith => throw _privateConstructorUsedError;
}
