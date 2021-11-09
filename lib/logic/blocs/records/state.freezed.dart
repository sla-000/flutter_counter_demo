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
class _$RecordsStateTearOff {
  const _$RecordsStateTearOff();

  _RecordsState call(
      {int lastRecord = 0,
      String name = '',
      List<String> lastNames = const <String>[],
      List<RecordData> records = const <RecordData>[],
      bool waitNetwork = false,
      String lastNetworkError = ''}) {
    return _RecordsState(
      lastRecord: lastRecord,
      name: name,
      lastNames: lastNames,
      records: records,
      waitNetwork: waitNetwork,
      lastNetworkError: lastNetworkError,
    );
  }
}

/// @nodoc
const $RecordsState = _$RecordsStateTearOff();

/// @nodoc
mixin _$RecordsState {
  int get lastRecord => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  List<String> get lastNames => throw _privateConstructorUsedError;
  List<RecordData> get records => throw _privateConstructorUsedError;
  bool get waitNetwork => throw _privateConstructorUsedError;
  String get lastNetworkError => throw _privateConstructorUsedError;

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
      {int lastRecord,
      String name,
      List<String> lastNames,
      List<RecordData> records,
      bool waitNetwork,
      String lastNetworkError});
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
    Object? lastNames = freezed,
    Object? records = freezed,
    Object? waitNetwork = freezed,
    Object? lastNetworkError = freezed,
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
      lastNames: lastNames == freezed
          ? _value.lastNames
          : lastNames // ignore: cast_nullable_to_non_nullable
              as List<String>,
      records: records == freezed
          ? _value.records
          : records // ignore: cast_nullable_to_non_nullable
              as List<RecordData>,
      waitNetwork: waitNetwork == freezed
          ? _value.waitNetwork
          : waitNetwork // ignore: cast_nullable_to_non_nullable
              as bool,
      lastNetworkError: lastNetworkError == freezed
          ? _value.lastNetworkError
          : lastNetworkError // ignore: cast_nullable_to_non_nullable
              as String,
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
      {int lastRecord,
      String name,
      List<String> lastNames,
      List<RecordData> records,
      bool waitNetwork,
      String lastNetworkError});
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
    Object? lastNames = freezed,
    Object? records = freezed,
    Object? waitNetwork = freezed,
    Object? lastNetworkError = freezed,
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
      lastNames: lastNames == freezed
          ? _value.lastNames
          : lastNames // ignore: cast_nullable_to_non_nullable
              as List<String>,
      records: records == freezed
          ? _value.records
          : records // ignore: cast_nullable_to_non_nullable
              as List<RecordData>,
      waitNetwork: waitNetwork == freezed
          ? _value.waitNetwork
          : waitNetwork // ignore: cast_nullable_to_non_nullable
              as bool,
      lastNetworkError: lastNetworkError == freezed
          ? _value.lastNetworkError
          : lastNetworkError // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_RecordsState extends _RecordsState {
  const _$_RecordsState(
      {this.lastRecord = 0,
      this.name = '',
      this.lastNames = const <String>[],
      this.records = const <RecordData>[],
      this.waitNetwork = false,
      this.lastNetworkError = ''})
      : super._();

  @JsonKey(defaultValue: 0)
  @override
  final int lastRecord;
  @JsonKey(defaultValue: '')
  @override
  final String name;
  @JsonKey(defaultValue: const <String>[])
  @override
  final List<String> lastNames;
  @JsonKey(defaultValue: const <RecordData>[])
  @override
  final List<RecordData> records;
  @JsonKey(defaultValue: false)
  @override
  final bool waitNetwork;
  @JsonKey(defaultValue: '')
  @override
  final String lastNetworkError;

  @override
  String toString() {
    return 'RecordsState(lastRecord: $lastRecord, name: $name, lastNames: $lastNames, records: $records, waitNetwork: $waitNetwork, lastNetworkError: $lastNetworkError)';
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
            (identical(other.lastNames, lastNames) ||
                const DeepCollectionEquality()
                    .equals(other.lastNames, lastNames)) &&
            (identical(other.records, records) ||
                const DeepCollectionEquality()
                    .equals(other.records, records)) &&
            (identical(other.waitNetwork, waitNetwork) ||
                const DeepCollectionEquality()
                    .equals(other.waitNetwork, waitNetwork)) &&
            (identical(other.lastNetworkError, lastNetworkError) ||
                const DeepCollectionEquality()
                    .equals(other.lastNetworkError, lastNetworkError)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(lastRecord) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(lastNames) ^
      const DeepCollectionEquality().hash(records) ^
      const DeepCollectionEquality().hash(waitNetwork) ^
      const DeepCollectionEquality().hash(lastNetworkError);

  @JsonKey(ignore: true)
  @override
  _$RecordsStateCopyWith<_RecordsState> get copyWith =>
      __$RecordsStateCopyWithImpl<_RecordsState>(this, _$identity);
}

abstract class _RecordsState extends RecordsState {
  const factory _RecordsState(
      {int lastRecord,
      String name,
      List<String> lastNames,
      List<RecordData> records,
      bool waitNetwork,
      String lastNetworkError}) = _$_RecordsState;
  const _RecordsState._() : super._();

  @override
  int get lastRecord => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  List<String> get lastNames => throw _privateConstructorUsedError;
  @override
  List<RecordData> get records => throw _privateConstructorUsedError;
  @override
  bool get waitNetwork => throw _privateConstructorUsedError;
  @override
  String get lastNetworkError => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$RecordsStateCopyWith<_RecordsState> get copyWith =>
      throw _privateConstructorUsedError;
}
