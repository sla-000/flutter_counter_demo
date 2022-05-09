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
class _$FrameStateTearOff {
  const _$FrameStateTearOff();

  _FrameState call({double delta = 0, double fps = 0, int frame = 0, bool enabled = false}) {
    return _FrameState(
      delta: delta,
      fps: fps,
      frame: frame,
      enabled: enabled,
    );
  }
}

/// @nodoc
const $FrameState = _$FrameStateTearOff();

/// @nodoc
mixin _$FrameState {
  double get delta => throw _privateConstructorUsedError;
  double get fps => throw _privateConstructorUsedError;
  int get frame => throw _privateConstructorUsedError;
  bool get enabled => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FrameStateCopyWith<FrameState> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FrameStateCopyWith<$Res> {
  factory $FrameStateCopyWith(FrameState value, $Res Function(FrameState) then) = _$FrameStateCopyWithImpl<$Res>;
  $Res call({double delta, double fps, int frame, bool enabled});
}

/// @nodoc
class _$FrameStateCopyWithImpl<$Res> implements $FrameStateCopyWith<$Res> {
  _$FrameStateCopyWithImpl(this._value, this._then);

  final FrameState _value;
  // ignore: unused_field
  final $Res Function(FrameState) _then;

  @override
  $Res call({
    Object? delta = freezed,
    Object? fps = freezed,
    Object? frame = freezed,
    Object? enabled = freezed,
  }) {
    return _then(_value.copyWith(
      delta: delta == freezed
          ? _value.delta
          : delta // ignore: cast_nullable_to_non_nullable
              as double,
      fps: fps == freezed
          ? _value.fps
          : fps // ignore: cast_nullable_to_non_nullable
              as double,
      frame: frame == freezed
          ? _value.frame
          : frame // ignore: cast_nullable_to_non_nullable
              as int,
      enabled: enabled == freezed
          ? _value.enabled
          : enabled // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$FrameStateCopyWith<$Res> implements $FrameStateCopyWith<$Res> {
  factory _$FrameStateCopyWith(_FrameState value, $Res Function(_FrameState) then) = __$FrameStateCopyWithImpl<$Res>;
  @override
  $Res call({double delta, double fps, int frame, bool enabled});
}

/// @nodoc
class __$FrameStateCopyWithImpl<$Res> extends _$FrameStateCopyWithImpl<$Res> implements _$FrameStateCopyWith<$Res> {
  __$FrameStateCopyWithImpl(_FrameState _value, $Res Function(_FrameState) _then)
      : super(_value, (v) => _then(v as _FrameState));

  @override
  _FrameState get _value => super._value as _FrameState;

  @override
  $Res call({
    Object? delta = freezed,
    Object? fps = freezed,
    Object? frame = freezed,
    Object? enabled = freezed,
  }) {
    return _then(_FrameState(
      delta: delta == freezed
          ? _value.delta
          : delta // ignore: cast_nullable_to_non_nullable
              as double,
      fps: fps == freezed
          ? _value.fps
          : fps // ignore: cast_nullable_to_non_nullable
              as double,
      frame: frame == freezed
          ? _value.frame
          : frame // ignore: cast_nullable_to_non_nullable
              as int,
      enabled: enabled == freezed
          ? _value.enabled
          : enabled // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_FrameState implements _FrameState {
  const _$_FrameState({this.delta = 0, this.fps = 0, this.frame = 0, this.enabled = false});

  @JsonKey(defaultValue: 0)
  @override
  final double delta;
  @JsonKey(defaultValue: 0)
  @override
  final double fps;
  @JsonKey(defaultValue: 0)
  @override
  final int frame;
  @JsonKey(defaultValue: false)
  @override
  final bool enabled;

  @override
  String toString() {
    return 'FrameState(delta: $delta, fps: $fps, frame: $frame, enabled: $enabled)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FrameState &&
            (identical(other.delta, delta) || const DeepCollectionEquality().equals(other.delta, delta)) &&
            (identical(other.fps, fps) || const DeepCollectionEquality().equals(other.fps, fps)) &&
            (identical(other.frame, frame) || const DeepCollectionEquality().equals(other.frame, frame)) &&
            (identical(other.enabled, enabled) || const DeepCollectionEquality().equals(other.enabled, enabled)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(delta) ^
      const DeepCollectionEquality().hash(fps) ^
      const DeepCollectionEquality().hash(frame) ^
      const DeepCollectionEquality().hash(enabled);

  @JsonKey(ignore: true)
  @override
  _$FrameStateCopyWith<_FrameState> get copyWith => __$FrameStateCopyWithImpl<_FrameState>(this, _$identity);
}

abstract class _FrameState implements FrameState {
  const factory _FrameState({double delta, double fps, int frame, bool enabled}) = _$_FrameState;

  @override
  double get delta => throw _privateConstructorUsedError;
  @override
  double get fps => throw _privateConstructorUsedError;
  @override
  int get frame => throw _privateConstructorUsedError;
  @override
  bool get enabled => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$FrameStateCopyWith<_FrameState> get copyWith => throw _privateConstructorUsedError;
}
