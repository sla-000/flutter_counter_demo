// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'repo.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RecordData {
  int get position => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get score => throw _privateConstructorUsedError;
  DateTime? get dateTime => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RecordDataCopyWith<RecordData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecordDataCopyWith<$Res> {
  factory $RecordDataCopyWith(
          RecordData value, $Res Function(RecordData) then) =
      _$RecordDataCopyWithImpl<$Res, RecordData>;
  @useResult
  $Res call({int position, String name, int score, DateTime? dateTime});
}

/// @nodoc
class _$RecordDataCopyWithImpl<$Res, $Val extends RecordData>
    implements $RecordDataCopyWith<$Res> {
  _$RecordDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? position = null,
    Object? name = null,
    Object? score = null,
    Object? dateTime = freezed,
  }) {
    return _then(_value.copyWith(
      position: null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int,
      dateTime: freezed == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RecordDataCopyWith<$Res>
    implements $RecordDataCopyWith<$Res> {
  factory _$$_RecordDataCopyWith(
          _$_RecordData value, $Res Function(_$_RecordData) then) =
      __$$_RecordDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int position, String name, int score, DateTime? dateTime});
}

/// @nodoc
class __$$_RecordDataCopyWithImpl<$Res>
    extends _$RecordDataCopyWithImpl<$Res, _$_RecordData>
    implements _$$_RecordDataCopyWith<$Res> {
  __$$_RecordDataCopyWithImpl(
      _$_RecordData _value, $Res Function(_$_RecordData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? position = null,
    Object? name = null,
    Object? score = null,
    Object? dateTime = freezed,
  }) {
    return _then(_$_RecordData(
      position: null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int,
      dateTime: freezed == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

class _$_RecordData extends _RecordData {
  const _$_RecordData(
      {this.position = RecordData.kPositionNA,
      this.name = '',
      this.score = RecordData.kScoreNA,
      this.dateTime})
      : super._();

  @override
  @JsonKey()
  final int position;
  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
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
        (other.runtimeType == runtimeType &&
            other is _$_RecordData &&
            (identical(other.position, position) ||
                other.position == position) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.score, score) || other.score == score) &&
            (identical(other.dateTime, dateTime) ||
                other.dateTime == dateTime));
  }

  @override
  int get hashCode => Object.hash(runtimeType, position, name, score, dateTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RecordDataCopyWith<_$_RecordData> get copyWith =>
      __$$_RecordDataCopyWithImpl<_$_RecordData>(this, _$identity);
}

abstract class _RecordData extends RecordData {
  const factory _RecordData(
      {final int position,
      final String name,
      final int score,
      final DateTime? dateTime}) = _$_RecordData;
  const _RecordData._() : super._();

  @override
  int get position;
  @override
  String get name;
  @override
  int get score;
  @override
  DateTime? get dateTime;
  @override
  @JsonKey(ignore: true)
  _$$_RecordDataCopyWith<_$_RecordData> get copyWith =>
      throw _privateConstructorUsedError;
}
