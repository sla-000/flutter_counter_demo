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
mixin _$FrameState {
  double get delta => throw _privateConstructorUsedError;
  double get fps => throw _privateConstructorUsedError;
  int get frame => throw _privateConstructorUsedError;
  bool get enabled => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FrameStateCopyWith<FrameState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FrameStateCopyWith<$Res> {
  factory $FrameStateCopyWith(
          FrameState value, $Res Function(FrameState) then) =
      _$FrameStateCopyWithImpl<$Res, FrameState>;
  @useResult
  $Res call({double delta, double fps, int frame, bool enabled});
}

/// @nodoc
class _$FrameStateCopyWithImpl<$Res, $Val extends FrameState>
    implements $FrameStateCopyWith<$Res> {
  _$FrameStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? delta = null,
    Object? fps = null,
    Object? frame = null,
    Object? enabled = null,
  }) {
    return _then(_value.copyWith(
      delta: null == delta
          ? _value.delta
          : delta // ignore: cast_nullable_to_non_nullable
              as double,
      fps: null == fps
          ? _value.fps
          : fps // ignore: cast_nullable_to_non_nullable
              as double,
      frame: null == frame
          ? _value.frame
          : frame // ignore: cast_nullable_to_non_nullable
              as int,
      enabled: null == enabled
          ? _value.enabled
          : enabled // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FrameStateCopyWith<$Res>
    implements $FrameStateCopyWith<$Res> {
  factory _$$_FrameStateCopyWith(
          _$_FrameState value, $Res Function(_$_FrameState) then) =
      __$$_FrameStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double delta, double fps, int frame, bool enabled});
}

/// @nodoc
class __$$_FrameStateCopyWithImpl<$Res>
    extends _$FrameStateCopyWithImpl<$Res, _$_FrameState>
    implements _$$_FrameStateCopyWith<$Res> {
  __$$_FrameStateCopyWithImpl(
      _$_FrameState _value, $Res Function(_$_FrameState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? delta = null,
    Object? fps = null,
    Object? frame = null,
    Object? enabled = null,
  }) {
    return _then(_$_FrameState(
      delta: null == delta
          ? _value.delta
          : delta // ignore: cast_nullable_to_non_nullable
              as double,
      fps: null == fps
          ? _value.fps
          : fps // ignore: cast_nullable_to_non_nullable
              as double,
      frame: null == frame
          ? _value.frame
          : frame // ignore: cast_nullable_to_non_nullable
              as int,
      enabled: null == enabled
          ? _value.enabled
          : enabled // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_FrameState implements _FrameState {
  const _$_FrameState(
      {this.delta = 0, this.fps = 0, this.frame = 0, this.enabled = false});

  @override
  @JsonKey()
  final double delta;
  @override
  @JsonKey()
  final double fps;
  @override
  @JsonKey()
  final int frame;
  @override
  @JsonKey()
  final bool enabled;

  @override
  String toString() {
    return 'FrameState(delta: $delta, fps: $fps, frame: $frame, enabled: $enabled)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FrameState &&
            (identical(other.delta, delta) || other.delta == delta) &&
            (identical(other.fps, fps) || other.fps == fps) &&
            (identical(other.frame, frame) || other.frame == frame) &&
            (identical(other.enabled, enabled) || other.enabled == enabled));
  }

  @override
  int get hashCode => Object.hash(runtimeType, delta, fps, frame, enabled);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FrameStateCopyWith<_$_FrameState> get copyWith =>
      __$$_FrameStateCopyWithImpl<_$_FrameState>(this, _$identity);
}

abstract class _FrameState implements FrameState {
  const factory _FrameState(
      {final double delta,
      final double fps,
      final int frame,
      final bool enabled}) = _$_FrameState;

  @override
  double get delta;
  @override
  double get fps;
  @override
  int get frame;
  @override
  bool get enabled;
  @override
  @JsonKey(ignore: true)
  _$$_FrameStateCopyWith<_$_FrameState> get copyWith =>
      throw _privateConstructorUsedError;
}
