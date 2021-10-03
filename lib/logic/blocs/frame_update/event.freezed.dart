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
class _$FrameUpdateEventTearOff {
  const _$FrameUpdateEventTearOff();

  FrameUpdateEventUpdate update() {
    return const FrameUpdateEventUpdate();
  }
}

/// @nodoc
const $FrameUpdateEvent = _$FrameUpdateEventTearOff();

/// @nodoc
mixin _$FrameUpdateEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? update,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FrameUpdateEventUpdate value) update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FrameUpdateEventUpdate value)? update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FrameUpdateEventUpdate value)? update,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FrameUpdateEventCopyWith<$Res> {
  factory $FrameUpdateEventCopyWith(
          FrameUpdateEvent value, $Res Function(FrameUpdateEvent) then) =
      _$FrameUpdateEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$FrameUpdateEventCopyWithImpl<$Res>
    implements $FrameUpdateEventCopyWith<$Res> {
  _$FrameUpdateEventCopyWithImpl(this._value, this._then);

  final FrameUpdateEvent _value;
  // ignore: unused_field
  final $Res Function(FrameUpdateEvent) _then;
}

/// @nodoc
abstract class $FrameUpdateEventUpdateCopyWith<$Res> {
  factory $FrameUpdateEventUpdateCopyWith(FrameUpdateEventUpdate value,
          $Res Function(FrameUpdateEventUpdate) then) =
      _$FrameUpdateEventUpdateCopyWithImpl<$Res>;
}

/// @nodoc
class _$FrameUpdateEventUpdateCopyWithImpl<$Res>
    extends _$FrameUpdateEventCopyWithImpl<$Res>
    implements $FrameUpdateEventUpdateCopyWith<$Res> {
  _$FrameUpdateEventUpdateCopyWithImpl(FrameUpdateEventUpdate _value,
      $Res Function(FrameUpdateEventUpdate) _then)
      : super(_value, (v) => _then(v as FrameUpdateEventUpdate));

  @override
  FrameUpdateEventUpdate get _value => super._value as FrameUpdateEventUpdate;
}

/// @nodoc

class _$FrameUpdateEventUpdate implements FrameUpdateEventUpdate {
  const _$FrameUpdateEventUpdate();

  @override
  String toString() {
    return 'FrameUpdateEvent.update()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is FrameUpdateEventUpdate);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() update,
  }) {
    return update();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? update,
  }) {
    return update?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? update,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FrameUpdateEventUpdate value) update,
  }) {
    return update(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FrameUpdateEventUpdate value)? update,
  }) {
    return update?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FrameUpdateEventUpdate value)? update,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(this);
    }
    return orElse();
  }
}

abstract class FrameUpdateEventUpdate implements FrameUpdateEvent {
  const factory FrameUpdateEventUpdate() = _$FrameUpdateEventUpdate;
}
