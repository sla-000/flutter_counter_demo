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
mixin _$FrameEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool enable) control,
    required TResult Function() update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool enable)? control,
    TResult? Function()? update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool enable)? control,
    TResult Function()? update,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FrameEventControl value) control,
    required TResult Function(FrameEventUpdate value) update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FrameEventControl value)? control,
    TResult? Function(FrameEventUpdate value)? update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FrameEventControl value)? control,
    TResult Function(FrameEventUpdate value)? update,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FrameEventCopyWith<$Res> {
  factory $FrameEventCopyWith(
          FrameEvent value, $Res Function(FrameEvent) then) =
      _$FrameEventCopyWithImpl<$Res, FrameEvent>;
}

/// @nodoc
class _$FrameEventCopyWithImpl<$Res, $Val extends FrameEvent>
    implements $FrameEventCopyWith<$Res> {
  _$FrameEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FrameEventControlCopyWith<$Res> {
  factory _$$FrameEventControlCopyWith(
          _$FrameEventControl value, $Res Function(_$FrameEventControl) then) =
      __$$FrameEventControlCopyWithImpl<$Res>;
  @useResult
  $Res call({bool enable});
}

/// @nodoc
class __$$FrameEventControlCopyWithImpl<$Res>
    extends _$FrameEventCopyWithImpl<$Res, _$FrameEventControl>
    implements _$$FrameEventControlCopyWith<$Res> {
  __$$FrameEventControlCopyWithImpl(
      _$FrameEventControl _value, $Res Function(_$FrameEventControl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? enable = null,
  }) {
    return _then(_$FrameEventControl(
      null == enable
          ? _value.enable
          : enable // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$FrameEventControl implements FrameEventControl {
  const _$FrameEventControl(this.enable);

  @override
  final bool enable;

  @override
  String toString() {
    return 'FrameEvent.control(enable: $enable)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FrameEventControl &&
            (identical(other.enable, enable) || other.enable == enable));
  }

  @override
  int get hashCode => Object.hash(runtimeType, enable);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FrameEventControlCopyWith<_$FrameEventControl> get copyWith =>
      __$$FrameEventControlCopyWithImpl<_$FrameEventControl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool enable) control,
    required TResult Function() update,
  }) {
    return control(enable);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool enable)? control,
    TResult? Function()? update,
  }) {
    return control?.call(enable);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool enable)? control,
    TResult Function()? update,
    required TResult orElse(),
  }) {
    if (control != null) {
      return control(enable);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FrameEventControl value) control,
    required TResult Function(FrameEventUpdate value) update,
  }) {
    return control(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FrameEventControl value)? control,
    TResult? Function(FrameEventUpdate value)? update,
  }) {
    return control?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FrameEventControl value)? control,
    TResult Function(FrameEventUpdate value)? update,
    required TResult orElse(),
  }) {
    if (control != null) {
      return control(this);
    }
    return orElse();
  }
}

abstract class FrameEventControl implements FrameEvent {
  const factory FrameEventControl(final bool enable) = _$FrameEventControl;

  bool get enable;
  @JsonKey(ignore: true)
  _$$FrameEventControlCopyWith<_$FrameEventControl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FrameEventUpdateCopyWith<$Res> {
  factory _$$FrameEventUpdateCopyWith(
          _$FrameEventUpdate value, $Res Function(_$FrameEventUpdate) then) =
      __$$FrameEventUpdateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FrameEventUpdateCopyWithImpl<$Res>
    extends _$FrameEventCopyWithImpl<$Res, _$FrameEventUpdate>
    implements _$$FrameEventUpdateCopyWith<$Res> {
  __$$FrameEventUpdateCopyWithImpl(
      _$FrameEventUpdate _value, $Res Function(_$FrameEventUpdate) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FrameEventUpdate implements FrameEventUpdate {
  const _$FrameEventUpdate();

  @override
  String toString() {
    return 'FrameEvent.update()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FrameEventUpdate);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool enable) control,
    required TResult Function() update,
  }) {
    return update();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool enable)? control,
    TResult? Function()? update,
  }) {
    return update?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool enable)? control,
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
    required TResult Function(FrameEventControl value) control,
    required TResult Function(FrameEventUpdate value) update,
  }) {
    return update(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FrameEventControl value)? control,
    TResult? Function(FrameEventUpdate value)? update,
  }) {
    return update?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FrameEventControl value)? control,
    TResult Function(FrameEventUpdate value)? update,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(this);
    }
    return orElse();
  }
}

abstract class FrameEventUpdate implements FrameEvent {
  const factory FrameEventUpdate() = _$FrameEventUpdate;
}
