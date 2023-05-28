// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
    TResult? Function()? fetch,
    TResult? Function()? upload,
    TResult? Function(int value)? setRecord,
    TResult? Function(String name)? setName,
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
    TResult? Function(RecordsEventFetch value)? fetch,
    TResult? Function(RecordsEventUpload value)? upload,
    TResult? Function(RecordsEventSetRecord value)? setRecord,
    TResult? Function(RecordsEventSetName value)? setName,
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
  factory $RecordsEventCopyWith(
          RecordsEvent value, $Res Function(RecordsEvent) then) =
      _$RecordsEventCopyWithImpl<$Res, RecordsEvent>;
}

/// @nodoc
class _$RecordsEventCopyWithImpl<$Res, $Val extends RecordsEvent>
    implements $RecordsEventCopyWith<$Res> {
  _$RecordsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$RecordsEventFetchCopyWith<$Res> {
  factory _$$RecordsEventFetchCopyWith(
          _$RecordsEventFetch value, $Res Function(_$RecordsEventFetch) then) =
      __$$RecordsEventFetchCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RecordsEventFetchCopyWithImpl<$Res>
    extends _$RecordsEventCopyWithImpl<$Res, _$RecordsEventFetch>
    implements _$$RecordsEventFetchCopyWith<$Res> {
  __$$RecordsEventFetchCopyWithImpl(
      _$RecordsEventFetch _value, $Res Function(_$RecordsEventFetch) _then)
      : super(_value, _then);
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
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RecordsEventFetch);
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
    TResult? Function()? fetch,
    TResult? Function()? upload,
    TResult? Function(int value)? setRecord,
    TResult? Function(String name)? setName,
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
    TResult? Function(RecordsEventFetch value)? fetch,
    TResult? Function(RecordsEventUpload value)? upload,
    TResult? Function(RecordsEventSetRecord value)? setRecord,
    TResult? Function(RecordsEventSetName value)? setName,
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
abstract class _$$RecordsEventUploadCopyWith<$Res> {
  factory _$$RecordsEventUploadCopyWith(_$RecordsEventUpload value,
          $Res Function(_$RecordsEventUpload) then) =
      __$$RecordsEventUploadCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RecordsEventUploadCopyWithImpl<$Res>
    extends _$RecordsEventCopyWithImpl<$Res, _$RecordsEventUpload>
    implements _$$RecordsEventUploadCopyWith<$Res> {
  __$$RecordsEventUploadCopyWithImpl(
      _$RecordsEventUpload _value, $Res Function(_$RecordsEventUpload) _then)
      : super(_value, _then);
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
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RecordsEventUpload);
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
    TResult? Function()? fetch,
    TResult? Function()? upload,
    TResult? Function(int value)? setRecord,
    TResult? Function(String name)? setName,
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
    TResult? Function(RecordsEventFetch value)? fetch,
    TResult? Function(RecordsEventUpload value)? upload,
    TResult? Function(RecordsEventSetRecord value)? setRecord,
    TResult? Function(RecordsEventSetName value)? setName,
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
abstract class _$$RecordsEventSetRecordCopyWith<$Res> {
  factory _$$RecordsEventSetRecordCopyWith(_$RecordsEventSetRecord value,
          $Res Function(_$RecordsEventSetRecord) then) =
      __$$RecordsEventSetRecordCopyWithImpl<$Res>;
  @useResult
  $Res call({int value});
}

/// @nodoc
class __$$RecordsEventSetRecordCopyWithImpl<$Res>
    extends _$RecordsEventCopyWithImpl<$Res, _$RecordsEventSetRecord>
    implements _$$RecordsEventSetRecordCopyWith<$Res> {
  __$$RecordsEventSetRecordCopyWithImpl(_$RecordsEventSetRecord _value,
      $Res Function(_$RecordsEventSetRecord) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$RecordsEventSetRecord(
      null == value
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
        (other.runtimeType == runtimeType &&
            other is _$RecordsEventSetRecord &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RecordsEventSetRecordCopyWith<_$RecordsEventSetRecord> get copyWith =>
      __$$RecordsEventSetRecordCopyWithImpl<_$RecordsEventSetRecord>(
          this, _$identity);

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
    TResult? Function()? fetch,
    TResult? Function()? upload,
    TResult? Function(int value)? setRecord,
    TResult? Function(String name)? setName,
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
    TResult? Function(RecordsEventFetch value)? fetch,
    TResult? Function(RecordsEventUpload value)? upload,
    TResult? Function(RecordsEventSetRecord value)? setRecord,
    TResult? Function(RecordsEventSetName value)? setName,
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
  const factory RecordsEventSetRecord(final int value) =
      _$RecordsEventSetRecord;

  int get value;
  @JsonKey(ignore: true)
  _$$RecordsEventSetRecordCopyWith<_$RecordsEventSetRecord> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RecordsEventSetNameCopyWith<$Res> {
  factory _$$RecordsEventSetNameCopyWith(_$RecordsEventSetName value,
          $Res Function(_$RecordsEventSetName) then) =
      __$$RecordsEventSetNameCopyWithImpl<$Res>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$RecordsEventSetNameCopyWithImpl<$Res>
    extends _$RecordsEventCopyWithImpl<$Res, _$RecordsEventSetName>
    implements _$$RecordsEventSetNameCopyWith<$Res> {
  __$$RecordsEventSetNameCopyWithImpl(
      _$RecordsEventSetName _value, $Res Function(_$RecordsEventSetName) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$RecordsEventSetName(
      null == name
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
        (other.runtimeType == runtimeType &&
            other is _$RecordsEventSetName &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RecordsEventSetNameCopyWith<_$RecordsEventSetName> get copyWith =>
      __$$RecordsEventSetNameCopyWithImpl<_$RecordsEventSetName>(
          this, _$identity);

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
    TResult? Function()? fetch,
    TResult? Function()? upload,
    TResult? Function(int value)? setRecord,
    TResult? Function(String name)? setName,
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
    TResult? Function(RecordsEventFetch value)? fetch,
    TResult? Function(RecordsEventUpload value)? upload,
    TResult? Function(RecordsEventSetRecord value)? setRecord,
    TResult? Function(RecordsEventSetName value)? setName,
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
  const factory RecordsEventSetName(final String name) = _$RecordsEventSetName;

  String get name;
  @JsonKey(ignore: true)
  _$$RecordsEventSetNameCopyWith<_$RecordsEventSetName> get copyWith =>
      throw _privateConstructorUsedError;
}
