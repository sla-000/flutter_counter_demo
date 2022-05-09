// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$RecordsEventTearOff {
  const _$RecordsEventTearOff();

  RecordsEventFetch fetch() {
    return const RecordsEventFetch();
  }

  RecordsEventUpload upload() {
    return const RecordsEventUpload();
  }

  RecordsEventSetRecord setRecord(int value) {
    return RecordsEventSetRecord(
      value,
    );
  }

  RecordsEventSetName setName(String name) {
    return RecordsEventSetName(
      name,
    );
  }
}

/// @nodoc
const $RecordsEvent = _$RecordsEventTearOff();

/// @nodoc
mixin _$RecordsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function() upload,
    required TResult Function(int value) setRecord,
    required TResult Function(String name) setName,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function()? upload,
    TResult Function(int value)? setRecord,
    TResult Function(String name)? setName,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function()? upload,
    TResult Function(int value)? setRecord,
    TResult Function(String name)? setName,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RecordsEventFetch value) fetch,
    required TResult Function(RecordsEventUpload value) upload,
    required TResult Function(RecordsEventSetRecord value) setRecord,
    required TResult Function(RecordsEventSetName value) setName,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(RecordsEventFetch value)? fetch,
    TResult Function(RecordsEventUpload value)? upload,
    TResult Function(RecordsEventSetRecord value)? setRecord,
    TResult Function(RecordsEventSetName value)? setName,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RecordsEventFetch value)? fetch,
    TResult Function(RecordsEventUpload value)? upload,
    TResult Function(RecordsEventSetRecord value)? setRecord,
    TResult Function(RecordsEventSetName value)? setName,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecordsEventCopyWith<$Res> {
  factory $RecordsEventCopyWith(RecordsEvent value, $Res Function(RecordsEvent) then) =
      _$RecordsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$RecordsEventCopyWithImpl<$Res> implements $RecordsEventCopyWith<$Res> {
  _$RecordsEventCopyWithImpl(this._value, this._then);

  final RecordsEvent _value;
  // ignore: unused_field
  final $Res Function(RecordsEvent) _then;
}

/// @nodoc
abstract class $RecordsEventFetchCopyWith<$Res> {
  factory $RecordsEventFetchCopyWith(RecordsEventFetch value, $Res Function(RecordsEventFetch) then) =
      _$RecordsEventFetchCopyWithImpl<$Res>;
}

/// @nodoc
class _$RecordsEventFetchCopyWithImpl<$Res> extends _$RecordsEventCopyWithImpl<$Res>
    implements $RecordsEventFetchCopyWith<$Res> {
  _$RecordsEventFetchCopyWithImpl(RecordsEventFetch _value, $Res Function(RecordsEventFetch) _then)
      : super(_value, (v) => _then(v as RecordsEventFetch));

  @override
  RecordsEventFetch get _value => super._value as RecordsEventFetch;
}

/// @nodoc

class _$RecordsEventFetch implements RecordsEventFetch {
  const _$RecordsEventFetch();

  @override
  String toString() {
    return 'RecordsEvent.fetch()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is RecordsEventFetch);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function() upload,
    required TResult Function(int value) setRecord,
    required TResult Function(String name) setName,
  }) {
    return fetch();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function()? upload,
    TResult Function(int value)? setRecord,
    TResult Function(String name)? setName,
  }) {
    return fetch?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function()? upload,
    TResult Function(int value)? setRecord,
    TResult Function(String name)? setName,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RecordsEventFetch value) fetch,
    required TResult Function(RecordsEventUpload value) upload,
    required TResult Function(RecordsEventSetRecord value) setRecord,
    required TResult Function(RecordsEventSetName value) setName,
  }) {
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(RecordsEventFetch value)? fetch,
    TResult Function(RecordsEventUpload value)? upload,
    TResult Function(RecordsEventSetRecord value)? setRecord,
    TResult Function(RecordsEventSetName value)? setName,
  }) {
    return fetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RecordsEventFetch value)? fetch,
    TResult Function(RecordsEventUpload value)? upload,
    TResult Function(RecordsEventSetRecord value)? setRecord,
    TResult Function(RecordsEventSetName value)? setName,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class RecordsEventFetch implements RecordsEvent {
  const factory RecordsEventFetch() = _$RecordsEventFetch;
}

/// @nodoc
abstract class $RecordsEventUploadCopyWith<$Res> {
  factory $RecordsEventUploadCopyWith(RecordsEventUpload value, $Res Function(RecordsEventUpload) then) =
      _$RecordsEventUploadCopyWithImpl<$Res>;
}

/// @nodoc
class _$RecordsEventUploadCopyWithImpl<$Res> extends _$RecordsEventCopyWithImpl<$Res>
    implements $RecordsEventUploadCopyWith<$Res> {
  _$RecordsEventUploadCopyWithImpl(RecordsEventUpload _value, $Res Function(RecordsEventUpload) _then)
      : super(_value, (v) => _then(v as RecordsEventUpload));

  @override
  RecordsEventUpload get _value => super._value as RecordsEventUpload;
}

/// @nodoc

class _$RecordsEventUpload implements RecordsEventUpload {
  const _$RecordsEventUpload();

  @override
  String toString() {
    return 'RecordsEvent.upload()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is RecordsEventUpload);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function() upload,
    required TResult Function(int value) setRecord,
    required TResult Function(String name) setName,
  }) {
    return upload();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function()? upload,
    TResult Function(int value)? setRecord,
    TResult Function(String name)? setName,
  }) {
    return upload?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function()? upload,
    TResult Function(int value)? setRecord,
    TResult Function(String name)? setName,
    required TResult orElse(),
  }) {
    if (upload != null) {
      return upload();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RecordsEventFetch value) fetch,
    required TResult Function(RecordsEventUpload value) upload,
    required TResult Function(RecordsEventSetRecord value) setRecord,
    required TResult Function(RecordsEventSetName value) setName,
  }) {
    return upload(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(RecordsEventFetch value)? fetch,
    TResult Function(RecordsEventUpload value)? upload,
    TResult Function(RecordsEventSetRecord value)? setRecord,
    TResult Function(RecordsEventSetName value)? setName,
  }) {
    return upload?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RecordsEventFetch value)? fetch,
    TResult Function(RecordsEventUpload value)? upload,
    TResult Function(RecordsEventSetRecord value)? setRecord,
    TResult Function(RecordsEventSetName value)? setName,
    required TResult orElse(),
  }) {
    if (upload != null) {
      return upload(this);
    }
    return orElse();
  }
}

abstract class RecordsEventUpload implements RecordsEvent {
  const factory RecordsEventUpload() = _$RecordsEventUpload;
}

/// @nodoc
abstract class $RecordsEventSetRecordCopyWith<$Res> {
  factory $RecordsEventSetRecordCopyWith(RecordsEventSetRecord value, $Res Function(RecordsEventSetRecord) then) =
      _$RecordsEventSetRecordCopyWithImpl<$Res>;
  $Res call({int value});
}

/// @nodoc
class _$RecordsEventSetRecordCopyWithImpl<$Res> extends _$RecordsEventCopyWithImpl<$Res>
    implements $RecordsEventSetRecordCopyWith<$Res> {
  _$RecordsEventSetRecordCopyWithImpl(RecordsEventSetRecord _value, $Res Function(RecordsEventSetRecord) _then)
      : super(_value, (v) => _then(v as RecordsEventSetRecord));

  @override
  RecordsEventSetRecord get _value => super._value as RecordsEventSetRecord;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(RecordsEventSetRecord(
      value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$RecordsEventSetRecord implements RecordsEventSetRecord {
  const _$RecordsEventSetRecord(this.value);

  @override
  final int value;

  @override
  String toString() {
    return 'RecordsEvent.setRecord(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RecordsEventSetRecord &&
            (identical(other.value, value) || const DeepCollectionEquality().equals(other.value, value)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(value);

  @JsonKey(ignore: true)
  @override
  $RecordsEventSetRecordCopyWith<RecordsEventSetRecord> get copyWith =>
      _$RecordsEventSetRecordCopyWithImpl<RecordsEventSetRecord>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function() upload,
    required TResult Function(int value) setRecord,
    required TResult Function(String name) setName,
  }) {
    return setRecord(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function()? upload,
    TResult Function(int value)? setRecord,
    TResult Function(String name)? setName,
  }) {
    return setRecord?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function()? upload,
    TResult Function(int value)? setRecord,
    TResult Function(String name)? setName,
    required TResult orElse(),
  }) {
    if (setRecord != null) {
      return setRecord(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RecordsEventFetch value) fetch,
    required TResult Function(RecordsEventUpload value) upload,
    required TResult Function(RecordsEventSetRecord value) setRecord,
    required TResult Function(RecordsEventSetName value) setName,
  }) {
    return setRecord(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(RecordsEventFetch value)? fetch,
    TResult Function(RecordsEventUpload value)? upload,
    TResult Function(RecordsEventSetRecord value)? setRecord,
    TResult Function(RecordsEventSetName value)? setName,
  }) {
    return setRecord?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RecordsEventFetch value)? fetch,
    TResult Function(RecordsEventUpload value)? upload,
    TResult Function(RecordsEventSetRecord value)? setRecord,
    TResult Function(RecordsEventSetName value)? setName,
    required TResult orElse(),
  }) {
    if (setRecord != null) {
      return setRecord(this);
    }
    return orElse();
  }
}

abstract class RecordsEventSetRecord implements RecordsEvent {
  const factory RecordsEventSetRecord(int value) = _$RecordsEventSetRecord;

  int get value => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RecordsEventSetRecordCopyWith<RecordsEventSetRecord> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecordsEventSetNameCopyWith<$Res> {
  factory $RecordsEventSetNameCopyWith(RecordsEventSetName value, $Res Function(RecordsEventSetName) then) =
      _$RecordsEventSetNameCopyWithImpl<$Res>;
  $Res call({String name});
}

/// @nodoc
class _$RecordsEventSetNameCopyWithImpl<$Res> extends _$RecordsEventCopyWithImpl<$Res>
    implements $RecordsEventSetNameCopyWith<$Res> {
  _$RecordsEventSetNameCopyWithImpl(RecordsEventSetName _value, $Res Function(RecordsEventSetName) _then)
      : super(_value, (v) => _then(v as RecordsEventSetName));

  @override
  RecordsEventSetName get _value => super._value as RecordsEventSetName;

  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(RecordsEventSetName(
      name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RecordsEventSetName implements RecordsEventSetName {
  const _$RecordsEventSetName(this.name);

  @override
  final String name;

  @override
  String toString() {
    return 'RecordsEvent.setName(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RecordsEventSetName &&
            (identical(other.name, name) || const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(name);

  @JsonKey(ignore: true)
  @override
  $RecordsEventSetNameCopyWith<RecordsEventSetName> get copyWith =>
      _$RecordsEventSetNameCopyWithImpl<RecordsEventSetName>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function() upload,
    required TResult Function(int value) setRecord,
    required TResult Function(String name) setName,
  }) {
    return setName(name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function()? upload,
    TResult Function(int value)? setRecord,
    TResult Function(String name)? setName,
  }) {
    return setName?.call(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function()? upload,
    TResult Function(int value)? setRecord,
    TResult Function(String name)? setName,
    required TResult orElse(),
  }) {
    if (setName != null) {
      return setName(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RecordsEventFetch value) fetch,
    required TResult Function(RecordsEventUpload value) upload,
    required TResult Function(RecordsEventSetRecord value) setRecord,
    required TResult Function(RecordsEventSetName value) setName,
  }) {
    return setName(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(RecordsEventFetch value)? fetch,
    TResult Function(RecordsEventUpload value)? upload,
    TResult Function(RecordsEventSetRecord value)? setRecord,
    TResult Function(RecordsEventSetName value)? setName,
  }) {
    return setName?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RecordsEventFetch value)? fetch,
    TResult Function(RecordsEventUpload value)? upload,
    TResult Function(RecordsEventSetRecord value)? setRecord,
    TResult Function(RecordsEventSetName value)? setName,
    required TResult orElse(),
  }) {
    if (setName != null) {
      return setName(this);
    }
    return orElse();
  }
}

abstract class RecordsEventSetName implements RecordsEvent {
  const factory RecordsEventSetName(String name) = _$RecordsEventSetName;

  String get name => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RecordsEventSetNameCopyWith<RecordsEventSetName> get copyWith => throw _privateConstructorUsedError;
}
