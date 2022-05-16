// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'memory.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$MemoryRecordTearOff {
  const _$MemoryRecordTearOff();

  _MemoryRecord call({String name = '', int score = 0, DateTime? dateTime}) {
    return _MemoryRecord(
      name: name,
      score: score,
      dateTime: dateTime,
    );
  }
}

/// @nodoc
const $MemoryRecord = _$MemoryRecordTearOff();

/// @nodoc
mixin _$MemoryRecord {
  String get name => throw _privateConstructorUsedError;
  int get score => throw _privateConstructorUsedError;
  DateTime? get dateTime => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MemoryRecordCopyWith<MemoryRecord> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MemoryRecordCopyWith<$Res> {
  factory $MemoryRecordCopyWith(MemoryRecord value, $Res Function(MemoryRecord) then) =
      _$MemoryRecordCopyWithImpl<$Res>;
  $Res call({String name, int score, DateTime? dateTime});
}

/// @nodoc
class _$MemoryRecordCopyWithImpl<$Res> implements $MemoryRecordCopyWith<$Res> {
  _$MemoryRecordCopyWithImpl(this._value, this._then);

  final MemoryRecord _value;
  // ignore: unused_field
  final $Res Function(MemoryRecord) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? score = freezed,
    Object? dateTime = freezed,
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
      dateTime: dateTime == freezed
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
abstract class _$MemoryRecordCopyWith<$Res> implements $MemoryRecordCopyWith<$Res> {
  factory _$MemoryRecordCopyWith(_MemoryRecord value, $Res Function(_MemoryRecord) then) =
      __$MemoryRecordCopyWithImpl<$Res>;
  @override
  $Res call({String name, int score, DateTime? dateTime});
}

/// @nodoc
class __$MemoryRecordCopyWithImpl<$Res> extends _$MemoryRecordCopyWithImpl<$Res>
    implements _$MemoryRecordCopyWith<$Res> {
  __$MemoryRecordCopyWithImpl(_MemoryRecord _value, $Res Function(_MemoryRecord) _then)
      : super(_value, (v) => _then(v as _MemoryRecord));

  @override
  _MemoryRecord get _value => super._value as _MemoryRecord;

  @override
  $Res call({
    Object? name = freezed,
    Object? score = freezed,
    Object? dateTime = freezed,
  }) {
    return _then(_MemoryRecord(
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

class _$_MemoryRecord extends _MemoryRecord {
  const _$_MemoryRecord({this.name = '', this.score = 0, this.dateTime}) : super._();

  @JsonKey()
  @override
  final String name;
  @JsonKey()
  @override
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
            other is _MemoryRecord &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.score, score) &&
            const DeepCollectionEquality().equals(other.dateTime, dateTime));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(score), const DeepCollectionEquality().hash(dateTime));

  @JsonKey(ignore: true)
  @override
  _$MemoryRecordCopyWith<_MemoryRecord> get copyWith => __$MemoryRecordCopyWithImpl<_MemoryRecord>(this, _$identity);
}

abstract class _MemoryRecord extends MemoryRecord {
  const factory _MemoryRecord({String name, int score, DateTime? dateTime}) = _$_MemoryRecord;
  const _MemoryRecord._() : super._();

  @override
  String get name;
  @override
  int get score;
  @override
  DateTime? get dateTime;
  @override
  @JsonKey(ignore: true)
  _$MemoryRecordCopyWith<_MemoryRecord> get copyWith => throw _privateConstructorUsedError;
}
