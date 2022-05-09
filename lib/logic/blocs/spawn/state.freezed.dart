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
class _$BombSpawnStateTearOff {
  const _$BombSpawnStateTearOff();

  _BombSpawnState call({int lastSpawn = 0}) {
    return _BombSpawnState(
      lastSpawn: lastSpawn,
    );
  }
}

/// @nodoc
const $BombSpawnState = _$BombSpawnStateTearOff();

/// @nodoc
mixin _$BombSpawnState {
  int get lastSpawn => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BombSpawnStateCopyWith<BombSpawnState> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BombSpawnStateCopyWith<$Res> {
  factory $BombSpawnStateCopyWith(BombSpawnState value, $Res Function(BombSpawnState) then) =
      _$BombSpawnStateCopyWithImpl<$Res>;
  $Res call({int lastSpawn});
}

/// @nodoc
class _$BombSpawnStateCopyWithImpl<$Res> implements $BombSpawnStateCopyWith<$Res> {
  _$BombSpawnStateCopyWithImpl(this._value, this._then);

  final BombSpawnState _value;
  // ignore: unused_field
  final $Res Function(BombSpawnState) _then;

  @override
  $Res call({
    Object? lastSpawn = freezed,
  }) {
    return _then(_value.copyWith(
      lastSpawn: lastSpawn == freezed
          ? _value.lastSpawn
          : lastSpawn // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$BombSpawnStateCopyWith<$Res> implements $BombSpawnStateCopyWith<$Res> {
  factory _$BombSpawnStateCopyWith(_BombSpawnState value, $Res Function(_BombSpawnState) then) =
      __$BombSpawnStateCopyWithImpl<$Res>;
  @override
  $Res call({int lastSpawn});
}

/// @nodoc
class __$BombSpawnStateCopyWithImpl<$Res> extends _$BombSpawnStateCopyWithImpl<$Res>
    implements _$BombSpawnStateCopyWith<$Res> {
  __$BombSpawnStateCopyWithImpl(_BombSpawnState _value, $Res Function(_BombSpawnState) _then)
      : super(_value, (v) => _then(v as _BombSpawnState));

  @override
  _BombSpawnState get _value => super._value as _BombSpawnState;

  @override
  $Res call({
    Object? lastSpawn = freezed,
  }) {
    return _then(_BombSpawnState(
      lastSpawn: lastSpawn == freezed
          ? _value.lastSpawn
          : lastSpawn // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_BombSpawnState implements _BombSpawnState {
  const _$_BombSpawnState({this.lastSpawn = 0});

  @JsonKey(defaultValue: 0)
  @override
  final int lastSpawn;

  @override
  String toString() {
    return 'BombSpawnState(lastSpawn: $lastSpawn)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BombSpawnState &&
            (identical(other.lastSpawn, lastSpawn) ||
                const DeepCollectionEquality().equals(other.lastSpawn, lastSpawn)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(lastSpawn);

  @JsonKey(ignore: true)
  @override
  _$BombSpawnStateCopyWith<_BombSpawnState> get copyWith =>
      __$BombSpawnStateCopyWithImpl<_BombSpawnState>(this, _$identity);
}

abstract class _BombSpawnState implements BombSpawnState {
  const factory _BombSpawnState({int lastSpawn}) = _$_BombSpawnState;

  @override
  int get lastSpawn => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$BombSpawnStateCopyWith<_BombSpawnState> get copyWith => throw _privateConstructorUsedError;
}
