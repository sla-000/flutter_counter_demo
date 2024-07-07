// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'memory.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MemoryRecord {
  String get name => throw _privateConstructorUsedError;
  int get score => throw _privateConstructorUsedError;
  DateTime? get dateTime => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MemoryRecordCopyWith<MemoryRecord> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MemoryRecordCopyWith<$Res> {
  factory $MemoryRecordCopyWith(
          MemoryRecord value, $Res Function(MemoryRecord) then) =
      _$MemoryRecordCopyWithImpl<$Res, MemoryRecord>;
  @useResult
  $Res call({String name, int score, DateTime? dateTime});
}

/// @nodoc
class _$MemoryRecordCopyWithImpl<$Res, $Val extends MemoryRecord>
    implements $MemoryRecordCopyWith<$Res> {
  _$MemoryRecordCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? score = null,
    Object? dateTime = freezed,
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
      dateTime: freezed == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MemoryRecordCopyWith<$Res>
    implements $MemoryRecordCopyWith<$Res> {
  factory _$$_MemoryRecordCopyWith(
          _$_MemoryRecord value, $Res Function(_$_MemoryRecord) then) =
      __$$_MemoryRecordCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, int score, DateTime? dateTime});
}

/// @nodoc
class __$$_MemoryRecordCopyWithImpl<$Res>
    extends _$MemoryRecordCopyWithImpl<$Res, _$_MemoryRecord>
    implements _$$_MemoryRecordCopyWith<$Res> {
  __$$_MemoryRecordCopyWithImpl(
      _$_MemoryRecord _value, $Res Function(_$_MemoryRecord) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? score = null,
    Object? dateTime = freezed,
  }) {
    return _then(_$_MemoryRecord(
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

class _$_MemoryRecord extends _MemoryRecord {
  const _$_MemoryRecord({this.name = '', this.score = 0, this.dateTime})
      : super._();

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
    return 'MemoryRecord(name: $name, score: $score, dateTime: $dateTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MemoryRecord &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.score, score) || other.score == score) &&
            (identical(other.dateTime, dateTime) ||
                other.dateTime == dateTime));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, score, dateTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MemoryRecordCopyWith<_$_MemoryRecord> get copyWith =>
      __$$_MemoryRecordCopyWithImpl<_$_MemoryRecord>(this, _$identity);
}

abstract class _MemoryRecord extends MemoryRecord {
  const factory _MemoryRecord(
      {final String name,
      final int score,
      final DateTime? dateTime}) = _$_MemoryRecord;
  const _MemoryRecord._() : super._();

  @override
  String get name;
  @override
  int get score;
  @override
  DateTime? get dateTime;
  @override
  @JsonKey(ignore: true)
  _$$_MemoryRecordCopyWith<_$_MemoryRecord> get copyWith =>
      throw _privateConstructorUsedError;
}
