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
class _$WavesStateTearOff {
  const _$WavesStateTearOff();

  _WavesState call({int count = 0, int waveTime = 0}) {
    return _WavesState(
      count: count,
      waveTime: waveTime,
    );
  }
}

/// @nodoc
const $WavesState = _$WavesStateTearOff();

/// @nodoc
mixin _$WavesState {
  int get count => throw _privateConstructorUsedError;
  int get waveTime => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WavesStateCopyWith<WavesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WavesStateCopyWith<$Res> {
  factory $WavesStateCopyWith(
          WavesState value, $Res Function(WavesState) then) =
      _$WavesStateCopyWithImpl<$Res>;
  $Res call({int count, int waveTime});
}

/// @nodoc
class _$WavesStateCopyWithImpl<$Res> implements $WavesStateCopyWith<$Res> {
  _$WavesStateCopyWithImpl(this._value, this._then);

  final WavesState _value;
  // ignore: unused_field
  final $Res Function(WavesState) _then;

  @override
  $Res call({
    Object? count = freezed,
    Object? waveTime = freezed,
  }) {
    return _then(_value.copyWith(
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      waveTime: waveTime == freezed
          ? _value.waveTime
          : waveTime // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$WavesStateCopyWith<$Res> implements $WavesStateCopyWith<$Res> {
  factory _$WavesStateCopyWith(
          _WavesState value, $Res Function(_WavesState) then) =
      __$WavesStateCopyWithImpl<$Res>;
  @override
  $Res call({int count, int waveTime});
}

/// @nodoc
class __$WavesStateCopyWithImpl<$Res> extends _$WavesStateCopyWithImpl<$Res>
    implements _$WavesStateCopyWith<$Res> {
  __$WavesStateCopyWithImpl(
      _WavesState _value, $Res Function(_WavesState) _then)
      : super(_value, (v) => _then(v as _WavesState));

  @override
  _WavesState get _value => super._value as _WavesState;

  @override
  $Res call({
    Object? count = freezed,
    Object? waveTime = freezed,
  }) {
    return _then(_WavesState(
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      waveTime: waveTime == freezed
          ? _value.waveTime
          : waveTime // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_WavesState implements _WavesState {
  const _$_WavesState({this.count = 0, this.waveTime = 0});

  @JsonKey(defaultValue: 0)
  @override
  final int count;
  @JsonKey(defaultValue: 0)
  @override
  final int waveTime;

  @override
  String toString() {
    return 'WavesState(count: $count, waveTime: $waveTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _WavesState &&
            (identical(other.count, count) ||
                const DeepCollectionEquality().equals(other.count, count)) &&
            (identical(other.waveTime, waveTime) ||
                const DeepCollectionEquality()
                    .equals(other.waveTime, waveTime)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(count) ^
      const DeepCollectionEquality().hash(waveTime);

  @JsonKey(ignore: true)
  @override
  _$WavesStateCopyWith<_WavesState> get copyWith =>
      __$WavesStateCopyWithImpl<_WavesState>(this, _$identity);
}

abstract class _WavesState implements WavesState {
  const factory _WavesState({int count, int waveTime}) = _$_WavesState;

  @override
  int get count => throw _privateConstructorUsedError;
  @override
  int get waveTime => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$WavesStateCopyWith<_WavesState> get copyWith =>
      throw _privateConstructorUsedError;
}
