// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RecordsState {
  int get lastRecord => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  List<String> get lastNames => throw _privateConstructorUsedError;
  List<RecordData> get records => throw _privateConstructorUsedError;
  bool get waitNetwork => throw _privateConstructorUsedError;
  String get lastNetworkError => throw _privateConstructorUsedError;
  bool get showNameInput => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RecordsStateCopyWith<RecordsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecordsStateCopyWith<$Res> {
  factory $RecordsStateCopyWith(
          RecordsState value, $Res Function(RecordsState) then) =
      _$RecordsStateCopyWithImpl<$Res, RecordsState>;
  @useResult
  $Res call(
      {int lastRecord,
      String name,
      List<String> lastNames,
      List<RecordData> records,
      bool waitNetwork,
      String lastNetworkError,
      bool showNameInput});
}

/// @nodoc
class _$RecordsStateCopyWithImpl<$Res, $Val extends RecordsState>
    implements $RecordsStateCopyWith<$Res> {
  _$RecordsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lastRecord = null,
    Object? name = null,
    Object? lastNames = null,
    Object? records = null,
    Object? waitNetwork = null,
    Object? lastNetworkError = null,
    Object? showNameInput = null,
  }) {
    return _then(_value.copyWith(
      lastRecord: null == lastRecord
          ? _value.lastRecord
          : lastRecord // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      lastNames: null == lastNames
          ? _value.lastNames
          : lastNames // ignore: cast_nullable_to_non_nullable
              as List<String>,
      records: null == records
          ? _value.records
          : records // ignore: cast_nullable_to_non_nullable
              as List<RecordData>,
      waitNetwork: null == waitNetwork
          ? _value.waitNetwork
          : waitNetwork // ignore: cast_nullable_to_non_nullable
              as bool,
      lastNetworkError: null == lastNetworkError
          ? _value.lastNetworkError
          : lastNetworkError // ignore: cast_nullable_to_non_nullable
              as String,
      showNameInput: null == showNameInput
          ? _value.showNameInput
          : showNameInput // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RecordsStateCopyWith<$Res>
    implements $RecordsStateCopyWith<$Res> {
  factory _$$_RecordsStateCopyWith(
          _$_RecordsState value, $Res Function(_$_RecordsState) then) =
      __$$_RecordsStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int lastRecord,
      String name,
      List<String> lastNames,
      List<RecordData> records,
      bool waitNetwork,
      String lastNetworkError,
      bool showNameInput});
}

/// @nodoc
class __$$_RecordsStateCopyWithImpl<$Res>
    extends _$RecordsStateCopyWithImpl<$Res, _$_RecordsState>
    implements _$$_RecordsStateCopyWith<$Res> {
  __$$_RecordsStateCopyWithImpl(
      _$_RecordsState _value, $Res Function(_$_RecordsState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lastRecord = null,
    Object? name = null,
    Object? lastNames = null,
    Object? records = null,
    Object? waitNetwork = null,
    Object? lastNetworkError = null,
    Object? showNameInput = null,
  }) {
    return _then(_$_RecordsState(
      lastRecord: null == lastRecord
          ? _value.lastRecord
          : lastRecord // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      lastNames: null == lastNames
          ? _value._lastNames
          : lastNames // ignore: cast_nullable_to_non_nullable
              as List<String>,
      records: null == records
          ? _value._records
          : records // ignore: cast_nullable_to_non_nullable
              as List<RecordData>,
      waitNetwork: null == waitNetwork
          ? _value.waitNetwork
          : waitNetwork // ignore: cast_nullable_to_non_nullable
              as bool,
      lastNetworkError: null == lastNetworkError
          ? _value.lastNetworkError
          : lastNetworkError // ignore: cast_nullable_to_non_nullable
              as String,
      showNameInput: null == showNameInput
          ? _value.showNameInput
          : showNameInput // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_RecordsState extends _RecordsState {
  const _$_RecordsState(
      {this.lastRecord = 0,
      this.name = '',
      final List<String> lastNames = const <String>[],
      final List<RecordData> records = const <RecordData>[],
      this.waitNetwork = false,
      this.lastNetworkError = '',
      this.showNameInput = false})
      : _lastNames = lastNames,
        _records = records,
        super._();

  @override
  @JsonKey()
  final int lastRecord;
  @override
  @JsonKey()
  final String name;
  final List<String> _lastNames;
  @override
  @JsonKey()
  List<String> get lastNames {
    if (_lastNames is EqualUnmodifiableListView) return _lastNames;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_lastNames);
  }

  final List<RecordData> _records;
  @override
  @JsonKey()
  List<RecordData> get records {
    if (_records is EqualUnmodifiableListView) return _records;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_records);
  }

  @override
  @JsonKey()
  final bool waitNetwork;
  @override
  @JsonKey()
  final String lastNetworkError;
  @override
  @JsonKey()
  final bool showNameInput;

  @override
  String toString() {
    return 'RecordsState(lastRecord: $lastRecord, name: $name, lastNames: $lastNames, records: $records, waitNetwork: $waitNetwork, lastNetworkError: $lastNetworkError, showNameInput: $showNameInput)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RecordsState &&
            (identical(other.lastRecord, lastRecord) ||
                other.lastRecord == lastRecord) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality()
                .equals(other._lastNames, _lastNames) &&
            const DeepCollectionEquality().equals(other._records, _records) &&
            (identical(other.waitNetwork, waitNetwork) ||
                other.waitNetwork == waitNetwork) &&
            (identical(other.lastNetworkError, lastNetworkError) ||
                other.lastNetworkError == lastNetworkError) &&
            (identical(other.showNameInput, showNameInput) ||
                other.showNameInput == showNameInput));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      lastRecord,
      name,
      const DeepCollectionEquality().hash(_lastNames),
      const DeepCollectionEquality().hash(_records),
      waitNetwork,
      lastNetworkError,
      showNameInput);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RecordsStateCopyWith<_$_RecordsState> get copyWith =>
      __$$_RecordsStateCopyWithImpl<_$_RecordsState>(this, _$identity);
}

abstract class _RecordsState extends RecordsState {
  const factory _RecordsState(
      {final int lastRecord,
      final String name,
      final List<String> lastNames,
      final List<RecordData> records,
      final bool waitNetwork,
      final String lastNetworkError,
      final bool showNameInput}) = _$_RecordsState;
  const _RecordsState._() : super._();

  @override
  int get lastRecord;
  @override
  String get name;
  @override
  List<String> get lastNames;
  @override
  List<RecordData> get records;
  @override
  bool get waitNetwork;
  @override
  String get lastNetworkError;
  @override
  bool get showNameInput;
  @override
  @JsonKey(ignore: true)
  _$$_RecordsStateCopyWith<_$_RecordsState> get copyWith =>
      throw _privateConstructorUsedError;
}
