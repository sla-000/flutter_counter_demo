// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$RecordDataTearOff {
  const _$RecordDataTearOff();

  _RecordData call({int record = 0, String name = ''}) {
    return _RecordData(
      record: record,
      name: name,
    );
  }
}

/// @nodoc
const $RecordData = _$RecordDataTearOff();

/// @nodoc
mixin _$RecordData {
  int get record => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RecordDataCopyWith<RecordData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecordDataCopyWith<$Res> {
  factory $RecordDataCopyWith(
          RecordData value, $Res Function(RecordData) then) =
      _$RecordDataCopyWithImpl<$Res>;
  $Res call({int record, String name});
}

/// @nodoc
class _$RecordDataCopyWithImpl<$Res> implements $RecordDataCopyWith<$Res> {
  _$RecordDataCopyWithImpl(this._value, this._then);

  final RecordData _value;
  // ignore: unused_field
  final $Res Function(RecordData) _then;

  @override
  $Res call({
    Object? record = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      record: record == freezed
          ? _value.record
          : record // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$RecordDataCopyWith<$Res> implements $RecordDataCopyWith<$Res> {
  factory _$RecordDataCopyWith(
          _RecordData value, $Res Function(_RecordData) then) =
      __$RecordDataCopyWithImpl<$Res>;
  @override
  $Res call({int record, String name});
}

/// @nodoc
class __$RecordDataCopyWithImpl<$Res> extends _$RecordDataCopyWithImpl<$Res>
    implements _$RecordDataCopyWith<$Res> {
  __$RecordDataCopyWithImpl(
      _RecordData _value, $Res Function(_RecordData) _then)
      : super(_value, (v) => _then(v as _RecordData));

  @override
  _RecordData get _value => super._value as _RecordData;

  @override
  $Res call({
    Object? record = freezed,
    Object? name = freezed,
  }) {
    return _then(_RecordData(
      record: record == freezed
          ? _value.record
          : record // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_RecordData implements _RecordData {
  const _$_RecordData({this.record = 0, this.name = ''});

  @JsonKey(defaultValue: 0)
  @override
  final int record;
  @JsonKey(defaultValue: '')
  @override
  final String name;

  @override
  String toString() {
    return 'RecordData(record: $record, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RecordData &&
            (identical(other.record, record) ||
                const DeepCollectionEquality().equals(other.record, record)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(record) ^
      const DeepCollectionEquality().hash(name);

  @JsonKey(ignore: true)
  @override
  _$RecordDataCopyWith<_RecordData> get copyWith =>
      __$RecordDataCopyWithImpl<_RecordData>(this, _$identity);
}

abstract class _RecordData implements RecordData {
  const factory _RecordData({int record, String name}) = _$_RecordData;

  @override
  int get record => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$RecordDataCopyWith<_RecordData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$RecordsStateTearOff {
  const _$RecordsStateTearOff();

  _RecordsState call(
      {int lastRecord = 0,
      String name = '',
      bool showWorld = false,
      List<RecordData> records = const <RecordData>[]}) {
    return _RecordsState(
      lastRecord: lastRecord,
      name: name,
      showWorld: showWorld,
      records: records,
    );
  }
}

/// @nodoc
const $RecordsState = _$RecordsStateTearOff();

/// @nodoc
mixin _$RecordsState {
  int get lastRecord => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  bool get showWorld => throw _privateConstructorUsedError;
  List<RecordData> get records => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RecordsStateCopyWith<RecordsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecordsStateCopyWith<$Res> {
  factory $RecordsStateCopyWith(
          RecordsState value, $Res Function(RecordsState) then) =
      _$RecordsStateCopyWithImpl<$Res>;
  $Res call(
      {int lastRecord, String name, bool showWorld, List<RecordData> records});
}

/// @nodoc
class _$RecordsStateCopyWithImpl<$Res> implements $RecordsStateCopyWith<$Res> {
  _$RecordsStateCopyWithImpl(this._value, this._then);

  final RecordsState _value;
  // ignore: unused_field
  final $Res Function(RecordsState) _then;

  @override
  $Res call({
    Object? lastRecord = freezed,
    Object? name = freezed,
    Object? showWorld = freezed,
    Object? records = freezed,
  }) {
    return _then(_value.copyWith(
      lastRecord: lastRecord == freezed
          ? _value.lastRecord
          : lastRecord // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      showWorld: showWorld == freezed
          ? _value.showWorld
          : showWorld // ignore: cast_nullable_to_non_nullable
              as bool,
      records: records == freezed
          ? _value.records
          : records // ignore: cast_nullable_to_non_nullable
              as List<RecordData>,
    ));
  }
}

/// @nodoc
abstract class _$RecordsStateCopyWith<$Res>
    implements $RecordsStateCopyWith<$Res> {
  factory _$RecordsStateCopyWith(
          _RecordsState value, $Res Function(_RecordsState) then) =
      __$RecordsStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {int lastRecord, String name, bool showWorld, List<RecordData> records});
}

/// @nodoc
class __$RecordsStateCopyWithImpl<$Res> extends _$RecordsStateCopyWithImpl<$Res>
    implements _$RecordsStateCopyWith<$Res> {
  __$RecordsStateCopyWithImpl(
      _RecordsState _value, $Res Function(_RecordsState) _then)
      : super(_value, (v) => _then(v as _RecordsState));

  @override
  _RecordsState get _value => super._value as _RecordsState;

  @override
  $Res call({
    Object? lastRecord = freezed,
    Object? name = freezed,
    Object? showWorld = freezed,
    Object? records = freezed,
  }) {
    return _then(_RecordsState(
      lastRecord: lastRecord == freezed
          ? _value.lastRecord
          : lastRecord // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      showWorld: showWorld == freezed
          ? _value.showWorld
          : showWorld // ignore: cast_nullable_to_non_nullable
              as bool,
      records: records == freezed
          ? _value.records
          : records // ignore: cast_nullable_to_non_nullable
              as List<RecordData>,
    ));
  }
}

/// @nodoc

class _$_RecordsState extends _RecordsState {
  const _$_RecordsState(
      {this.lastRecord = 0,
      this.name = '',
      this.showWorld = false,
      this.records = const <RecordData>[]})
      : super._();

  @JsonKey(defaultValue: 0)
  @override
  final int lastRecord;
  @JsonKey(defaultValue: '')
  @override
  final String name;
  @JsonKey(defaultValue: false)
  @override
  final bool showWorld;
  @JsonKey(defaultValue: const <RecordData>[])
  @override
  final List<RecordData> records;

  @override
  String toString() {
    return 'RecordsState(lastRecord: $lastRecord, name: $name, showWorld: $showWorld, records: $records)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RecordsState &&
            (identical(other.lastRecord, lastRecord) ||
                const DeepCollectionEquality()
                    .equals(other.lastRecord, lastRecord)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.showWorld, showWorld) ||
                const DeepCollectionEquality()
                    .equals(other.showWorld, showWorld)) &&
            (identical(other.records, records) ||
                const DeepCollectionEquality().equals(other.records, records)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(lastRecord) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(showWorld) ^
      const DeepCollectionEquality().hash(records);

  @JsonKey(ignore: true)
  @override
  _$RecordsStateCopyWith<_RecordsState> get copyWith =>
      __$RecordsStateCopyWithImpl<_RecordsState>(this, _$identity);
}

abstract class _RecordsState extends RecordsState {
  const factory _RecordsState(
      {int lastRecord,
      String name,
      bool showWorld,
      List<RecordData> records}) = _$_RecordsState;
  const _RecordsState._() : super._();

  @override
  int get lastRecord => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  bool get showWorld => throw _privateConstructorUsedError;
  @override
  List<RecordData> get records => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$RecordsStateCopyWith<_RecordsState> get copyWith =>
      throw _privateConstructorUsedError;
}
