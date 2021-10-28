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

  RecordsEventShowGlobal showGlobal(bool show) {
    return RecordsEventShowGlobal(
      show,
    );
  }

  RecordsEventFetch fetch() {
    return const RecordsEventFetch();
  }

  RecordsEventUpload upload() {
    return const RecordsEventUpload();
  }

  RecordsEventAdd add(int value) {
    return RecordsEventAdd(
      value,
    );
  }

  RecordsEventSetName setName(int value) {
    return RecordsEventSetName(
      value,
    );
  }
}

/// @nodoc
const $RecordsEvent = _$RecordsEventTearOff();

/// @nodoc
mixin _$RecordsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool show) showGlobal,
    required TResult Function() fetch,
    required TResult Function() upload,
    required TResult Function(int value) add,
    required TResult Function(int value) setName,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool show)? showGlobal,
    TResult Function()? fetch,
    TResult Function()? upload,
    TResult Function(int value)? add,
    TResult Function(int value)? setName,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool show)? showGlobal,
    TResult Function()? fetch,
    TResult Function()? upload,
    TResult Function(int value)? add,
    TResult Function(int value)? setName,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RecordsEventShowGlobal value) showGlobal,
    required TResult Function(RecordsEventFetch value) fetch,
    required TResult Function(RecordsEventUpload value) upload,
    required TResult Function(RecordsEventAdd value) add,
    required TResult Function(RecordsEventSetName value) setName,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(RecordsEventShowGlobal value)? showGlobal,
    TResult Function(RecordsEventFetch value)? fetch,
    TResult Function(RecordsEventUpload value)? upload,
    TResult Function(RecordsEventAdd value)? add,
    TResult Function(RecordsEventSetName value)? setName,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RecordsEventShowGlobal value)? showGlobal,
    TResult Function(RecordsEventFetch value)? fetch,
    TResult Function(RecordsEventUpload value)? upload,
    TResult Function(RecordsEventAdd value)? add,
    TResult Function(RecordsEventSetName value)? setName,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecordsEventCopyWith<$Res> {
  factory $RecordsEventCopyWith(
          RecordsEvent value, $Res Function(RecordsEvent) then) =
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
abstract class $RecordsEventShowGlobalCopyWith<$Res> {
  factory $RecordsEventShowGlobalCopyWith(RecordsEventShowGlobal value,
          $Res Function(RecordsEventShowGlobal) then) =
      _$RecordsEventShowGlobalCopyWithImpl<$Res>;
  $Res call({bool show});
}

/// @nodoc
class _$RecordsEventShowGlobalCopyWithImpl<$Res>
    extends _$RecordsEventCopyWithImpl<$Res>
    implements $RecordsEventShowGlobalCopyWith<$Res> {
  _$RecordsEventShowGlobalCopyWithImpl(RecordsEventShowGlobal _value,
      $Res Function(RecordsEventShowGlobal) _then)
      : super(_value, (v) => _then(v as RecordsEventShowGlobal));

  @override
  RecordsEventShowGlobal get _value => super._value as RecordsEventShowGlobal;

  @override
  $Res call({
    Object? show = freezed,
  }) {
    return _then(RecordsEventShowGlobal(
      show == freezed
          ? _value.show
          : show // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$RecordsEventShowGlobal implements RecordsEventShowGlobal {
  const _$RecordsEventShowGlobal(this.show);

  @override
  final bool show;

  @override
  String toString() {
    return 'RecordsEvent.showGlobal(show: $show)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RecordsEventShowGlobal &&
            (identical(other.show, show) ||
                const DeepCollectionEquality().equals(other.show, show)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(show);

  @JsonKey(ignore: true)
  @override
  $RecordsEventShowGlobalCopyWith<RecordsEventShowGlobal> get copyWith =>
      _$RecordsEventShowGlobalCopyWithImpl<RecordsEventShowGlobal>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool show) showGlobal,
    required TResult Function() fetch,
    required TResult Function() upload,
    required TResult Function(int value) add,
    required TResult Function(int value) setName,
  }) {
    return showGlobal(show);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool show)? showGlobal,
    TResult Function()? fetch,
    TResult Function()? upload,
    TResult Function(int value)? add,
    TResult Function(int value)? setName,
  }) {
    return showGlobal?.call(show);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool show)? showGlobal,
    TResult Function()? fetch,
    TResult Function()? upload,
    TResult Function(int value)? add,
    TResult Function(int value)? setName,
    required TResult orElse(),
  }) {
    if (showGlobal != null) {
      return showGlobal(show);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RecordsEventShowGlobal value) showGlobal,
    required TResult Function(RecordsEventFetch value) fetch,
    required TResult Function(RecordsEventUpload value) upload,
    required TResult Function(RecordsEventAdd value) add,
    required TResult Function(RecordsEventSetName value) setName,
  }) {
    return showGlobal(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(RecordsEventShowGlobal value)? showGlobal,
    TResult Function(RecordsEventFetch value)? fetch,
    TResult Function(RecordsEventUpload value)? upload,
    TResult Function(RecordsEventAdd value)? add,
    TResult Function(RecordsEventSetName value)? setName,
  }) {
    return showGlobal?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RecordsEventShowGlobal value)? showGlobal,
    TResult Function(RecordsEventFetch value)? fetch,
    TResult Function(RecordsEventUpload value)? upload,
    TResult Function(RecordsEventAdd value)? add,
    TResult Function(RecordsEventSetName value)? setName,
    required TResult orElse(),
  }) {
    if (showGlobal != null) {
      return showGlobal(this);
    }
    return orElse();
  }
}

abstract class RecordsEventShowGlobal implements RecordsEvent {
  const factory RecordsEventShowGlobal(bool show) = _$RecordsEventShowGlobal;

  bool get show => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RecordsEventShowGlobalCopyWith<RecordsEventShowGlobal> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecordsEventFetchCopyWith<$Res> {
  factory $RecordsEventFetchCopyWith(
          RecordsEventFetch value, $Res Function(RecordsEventFetch) then) =
      _$RecordsEventFetchCopyWithImpl<$Res>;
}

/// @nodoc
class _$RecordsEventFetchCopyWithImpl<$Res>
    extends _$RecordsEventCopyWithImpl<$Res>
    implements $RecordsEventFetchCopyWith<$Res> {
  _$RecordsEventFetchCopyWithImpl(
      RecordsEventFetch _value, $Res Function(RecordsEventFetch) _then)
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
    required TResult Function(bool show) showGlobal,
    required TResult Function() fetch,
    required TResult Function() upload,
    required TResult Function(int value) add,
    required TResult Function(int value) setName,
  }) {
    return fetch();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool show)? showGlobal,
    TResult Function()? fetch,
    TResult Function()? upload,
    TResult Function(int value)? add,
    TResult Function(int value)? setName,
  }) {
    return fetch?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool show)? showGlobal,
    TResult Function()? fetch,
    TResult Function()? upload,
    TResult Function(int value)? add,
    TResult Function(int value)? setName,
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
    required TResult Function(RecordsEventShowGlobal value) showGlobal,
    required TResult Function(RecordsEventFetch value) fetch,
    required TResult Function(RecordsEventUpload value) upload,
    required TResult Function(RecordsEventAdd value) add,
    required TResult Function(RecordsEventSetName value) setName,
  }) {
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(RecordsEventShowGlobal value)? showGlobal,
    TResult Function(RecordsEventFetch value)? fetch,
    TResult Function(RecordsEventUpload value)? upload,
    TResult Function(RecordsEventAdd value)? add,
    TResult Function(RecordsEventSetName value)? setName,
  }) {
    return fetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RecordsEventShowGlobal value)? showGlobal,
    TResult Function(RecordsEventFetch value)? fetch,
    TResult Function(RecordsEventUpload value)? upload,
    TResult Function(RecordsEventAdd value)? add,
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
  factory $RecordsEventUploadCopyWith(
          RecordsEventUpload value, $Res Function(RecordsEventUpload) then) =
      _$RecordsEventUploadCopyWithImpl<$Res>;
}

/// @nodoc
class _$RecordsEventUploadCopyWithImpl<$Res>
    extends _$RecordsEventCopyWithImpl<$Res>
    implements $RecordsEventUploadCopyWith<$Res> {
  _$RecordsEventUploadCopyWithImpl(
      RecordsEventUpload _value, $Res Function(RecordsEventUpload) _then)
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
    required TResult Function(bool show) showGlobal,
    required TResult Function() fetch,
    required TResult Function() upload,
    required TResult Function(int value) add,
    required TResult Function(int value) setName,
  }) {
    return upload();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool show)? showGlobal,
    TResult Function()? fetch,
    TResult Function()? upload,
    TResult Function(int value)? add,
    TResult Function(int value)? setName,
  }) {
    return upload?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool show)? showGlobal,
    TResult Function()? fetch,
    TResult Function()? upload,
    TResult Function(int value)? add,
    TResult Function(int value)? setName,
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
    required TResult Function(RecordsEventShowGlobal value) showGlobal,
    required TResult Function(RecordsEventFetch value) fetch,
    required TResult Function(RecordsEventUpload value) upload,
    required TResult Function(RecordsEventAdd value) add,
    required TResult Function(RecordsEventSetName value) setName,
  }) {
    return upload(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(RecordsEventShowGlobal value)? showGlobal,
    TResult Function(RecordsEventFetch value)? fetch,
    TResult Function(RecordsEventUpload value)? upload,
    TResult Function(RecordsEventAdd value)? add,
    TResult Function(RecordsEventSetName value)? setName,
  }) {
    return upload?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RecordsEventShowGlobal value)? showGlobal,
    TResult Function(RecordsEventFetch value)? fetch,
    TResult Function(RecordsEventUpload value)? upload,
    TResult Function(RecordsEventAdd value)? add,
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
abstract class $RecordsEventAddCopyWith<$Res> {
  factory $RecordsEventAddCopyWith(
          RecordsEventAdd value, $Res Function(RecordsEventAdd) then) =
      _$RecordsEventAddCopyWithImpl<$Res>;
  $Res call({int value});
}

/// @nodoc
class _$RecordsEventAddCopyWithImpl<$Res>
    extends _$RecordsEventCopyWithImpl<$Res>
    implements $RecordsEventAddCopyWith<$Res> {
  _$RecordsEventAddCopyWithImpl(
      RecordsEventAdd _value, $Res Function(RecordsEventAdd) _then)
      : super(_value, (v) => _then(v as RecordsEventAdd));

  @override
  RecordsEventAdd get _value => super._value as RecordsEventAdd;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(RecordsEventAdd(
      value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$RecordsEventAdd implements RecordsEventAdd {
  const _$RecordsEventAdd(this.value);

  @override
  final int value;

  @override
  String toString() {
    return 'RecordsEvent.add(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RecordsEventAdd &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(value);

  @JsonKey(ignore: true)
  @override
  $RecordsEventAddCopyWith<RecordsEventAdd> get copyWith =>
      _$RecordsEventAddCopyWithImpl<RecordsEventAdd>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool show) showGlobal,
    required TResult Function() fetch,
    required TResult Function() upload,
    required TResult Function(int value) add,
    required TResult Function(int value) setName,
  }) {
    return add(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool show)? showGlobal,
    TResult Function()? fetch,
    TResult Function()? upload,
    TResult Function(int value)? add,
    TResult Function(int value)? setName,
  }) {
    return add?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool show)? showGlobal,
    TResult Function()? fetch,
    TResult Function()? upload,
    TResult Function(int value)? add,
    TResult Function(int value)? setName,
    required TResult orElse(),
  }) {
    if (add != null) {
      return add(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RecordsEventShowGlobal value) showGlobal,
    required TResult Function(RecordsEventFetch value) fetch,
    required TResult Function(RecordsEventUpload value) upload,
    required TResult Function(RecordsEventAdd value) add,
    required TResult Function(RecordsEventSetName value) setName,
  }) {
    return add(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(RecordsEventShowGlobal value)? showGlobal,
    TResult Function(RecordsEventFetch value)? fetch,
    TResult Function(RecordsEventUpload value)? upload,
    TResult Function(RecordsEventAdd value)? add,
    TResult Function(RecordsEventSetName value)? setName,
  }) {
    return add?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RecordsEventShowGlobal value)? showGlobal,
    TResult Function(RecordsEventFetch value)? fetch,
    TResult Function(RecordsEventUpload value)? upload,
    TResult Function(RecordsEventAdd value)? add,
    TResult Function(RecordsEventSetName value)? setName,
    required TResult orElse(),
  }) {
    if (add != null) {
      return add(this);
    }
    return orElse();
  }
}

abstract class RecordsEventAdd implements RecordsEvent {
  const factory RecordsEventAdd(int value) = _$RecordsEventAdd;

  int get value => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RecordsEventAddCopyWith<RecordsEventAdd> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecordsEventSetNameCopyWith<$Res> {
  factory $RecordsEventSetNameCopyWith(
          RecordsEventSetName value, $Res Function(RecordsEventSetName) then) =
      _$RecordsEventSetNameCopyWithImpl<$Res>;
  $Res call({int value});
}

/// @nodoc
class _$RecordsEventSetNameCopyWithImpl<$Res>
    extends _$RecordsEventCopyWithImpl<$Res>
    implements $RecordsEventSetNameCopyWith<$Res> {
  _$RecordsEventSetNameCopyWithImpl(
      RecordsEventSetName _value, $Res Function(RecordsEventSetName) _then)
      : super(_value, (v) => _then(v as RecordsEventSetName));

  @override
  RecordsEventSetName get _value => super._value as RecordsEventSetName;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(RecordsEventSetName(
      value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$RecordsEventSetName implements RecordsEventSetName {
  const _$RecordsEventSetName(this.value);

  @override
  final int value;

  @override
  String toString() {
    return 'RecordsEvent.setName(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RecordsEventSetName &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(value);

  @JsonKey(ignore: true)
  @override
  $RecordsEventSetNameCopyWith<RecordsEventSetName> get copyWith =>
      _$RecordsEventSetNameCopyWithImpl<RecordsEventSetName>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool show) showGlobal,
    required TResult Function() fetch,
    required TResult Function() upload,
    required TResult Function(int value) add,
    required TResult Function(int value) setName,
  }) {
    return setName(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool show)? showGlobal,
    TResult Function()? fetch,
    TResult Function()? upload,
    TResult Function(int value)? add,
    TResult Function(int value)? setName,
  }) {
    return setName?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool show)? showGlobal,
    TResult Function()? fetch,
    TResult Function()? upload,
    TResult Function(int value)? add,
    TResult Function(int value)? setName,
    required TResult orElse(),
  }) {
    if (setName != null) {
      return setName(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RecordsEventShowGlobal value) showGlobal,
    required TResult Function(RecordsEventFetch value) fetch,
    required TResult Function(RecordsEventUpload value) upload,
    required TResult Function(RecordsEventAdd value) add,
    required TResult Function(RecordsEventSetName value) setName,
  }) {
    return setName(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(RecordsEventShowGlobal value)? showGlobal,
    TResult Function(RecordsEventFetch value)? fetch,
    TResult Function(RecordsEventUpload value)? upload,
    TResult Function(RecordsEventAdd value)? add,
    TResult Function(RecordsEventSetName value)? setName,
  }) {
    return setName?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RecordsEventShowGlobal value)? showGlobal,
    TResult Function(RecordsEventFetch value)? fetch,
    TResult Function(RecordsEventUpload value)? upload,
    TResult Function(RecordsEventAdd value)? add,
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
  const factory RecordsEventSetName(int value) = _$RecordsEventSetName;

  int get value => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RecordsEventSetNameCopyWith<RecordsEventSetName> get copyWith =>
      throw _privateConstructorUsedError;
}
