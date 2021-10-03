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
class _$FrameUpdateStateTearOff {
  const _$FrameUpdateStateTearOff();

  _FrameUpdateState call({double delta = 0, int frames = 0}) {
    return _FrameUpdateState(
      delta: delta,
      frames: frames,
    );
  }
}

/// @nodoc
const $FrameUpdateState = _$FrameUpdateStateTearOff();

/// @nodoc
mixin _$FrameUpdateState {
  double get delta => throw _privateConstructorUsedError;
  int get frames => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FrameUpdateStateCopyWith<FrameUpdateState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FrameUpdateStateCopyWith<$Res> {
  factory $FrameUpdateStateCopyWith(
          FrameUpdateState value, $Res Function(FrameUpdateState) then) =
      _$FrameUpdateStateCopyWithImpl<$Res>;
  $Res call({double delta, int frames});
}

/// @nodoc
class _$FrameUpdateStateCopyWithImpl<$Res>
    implements $FrameUpdateStateCopyWith<$Res> {
  _$FrameUpdateStateCopyWithImpl(this._value, this._then);

  final FrameUpdateState _value;
  // ignore: unused_field
  final $Res Function(FrameUpdateState) _then;

  @override
  $Res call({
    Object? delta = freezed,
    Object? frames = freezed,
  }) {
    return _then(_value.copyWith(
      delta: delta == freezed
          ? _value.delta
          : delta // ignore: cast_nullable_to_non_nullable
              as double,
      frames: frames == freezed
          ? _value.frames
          : frames // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$FrameUpdateStateCopyWith<$Res>
    implements $FrameUpdateStateCopyWith<$Res> {
  factory _$FrameUpdateStateCopyWith(
          _FrameUpdateState value, $Res Function(_FrameUpdateState) then) =
      __$FrameUpdateStateCopyWithImpl<$Res>;
  @override
  $Res call({double delta, int frames});
}

/// @nodoc
class __$FrameUpdateStateCopyWithImpl<$Res>
    extends _$FrameUpdateStateCopyWithImpl<$Res>
    implements _$FrameUpdateStateCopyWith<$Res> {
  __$FrameUpdateStateCopyWithImpl(
      _FrameUpdateState _value, $Res Function(_FrameUpdateState) _then)
      : super(_value, (v) => _then(v as _FrameUpdateState));

  @override
  _FrameUpdateState get _value => super._value as _FrameUpdateState;

  @override
  $Res call({
    Object? delta = freezed,
    Object? frames = freezed,
  }) {
    return _then(_FrameUpdateState(
      delta: delta == freezed
          ? _value.delta
          : delta // ignore: cast_nullable_to_non_nullable
              as double,
      frames: frames == freezed
          ? _value.frames
          : frames // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_FrameUpdateState implements _FrameUpdateState {
  const _$_FrameUpdateState({this.delta = 0, this.frames = 0});

  @JsonKey(defaultValue: 0)
  @override
  final double delta;
  @JsonKey(defaultValue: 0)
  @override
  final int frames;

  @override
  String toString() {
    return 'FrameUpdateState(delta: $delta, frames: $frames)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FrameUpdateState &&
            (identical(other.delta, delta) ||
                const DeepCollectionEquality().equals(other.delta, delta)) &&
            (identical(other.frames, frames) ||
                const DeepCollectionEquality().equals(other.frames, frames)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(delta) ^
      const DeepCollectionEquality().hash(frames);

  @JsonKey(ignore: true)
  @override
  _$FrameUpdateStateCopyWith<_FrameUpdateState> get copyWith =>
      __$FrameUpdateStateCopyWithImpl<_FrameUpdateState>(this, _$identity);
}

abstract class _FrameUpdateState implements FrameUpdateState {
  const factory _FrameUpdateState({double delta, int frames}) =
      _$_FrameUpdateState;

  @override
  double get delta => throw _privateConstructorUsedError;
  @override
  int get frames => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$FrameUpdateStateCopyWith<_FrameUpdateState> get copyWith =>
      throw _privateConstructorUsedError;
}
