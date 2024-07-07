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
mixin _$BombSpawnState {
  int get lastSpawn => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BombSpawnStateCopyWith<BombSpawnState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BombSpawnStateCopyWith<$Res> {
  factory $BombSpawnStateCopyWith(
          BombSpawnState value, $Res Function(BombSpawnState) then) =
      _$BombSpawnStateCopyWithImpl<$Res, BombSpawnState>;
  @useResult
  $Res call({int lastSpawn});
}

/// @nodoc
class _$BombSpawnStateCopyWithImpl<$Res, $Val extends BombSpawnState>
    implements $BombSpawnStateCopyWith<$Res> {
  _$BombSpawnStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lastSpawn = null,
  }) {
    return _then(_value.copyWith(
      lastSpawn: null == lastSpawn
          ? _value.lastSpawn
          : lastSpawn // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BombSpawnStateCopyWith<$Res>
    implements $BombSpawnStateCopyWith<$Res> {
  factory _$$_BombSpawnStateCopyWith(
          _$_BombSpawnState value, $Res Function(_$_BombSpawnState) then) =
      __$$_BombSpawnStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int lastSpawn});
}

/// @nodoc
class __$$_BombSpawnStateCopyWithImpl<$Res>
    extends _$BombSpawnStateCopyWithImpl<$Res, _$_BombSpawnState>
    implements _$$_BombSpawnStateCopyWith<$Res> {
  __$$_BombSpawnStateCopyWithImpl(
      _$_BombSpawnState _value, $Res Function(_$_BombSpawnState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lastSpawn = null,
  }) {
    return _then(_$_BombSpawnState(
      lastSpawn: null == lastSpawn
          ? _value.lastSpawn
          : lastSpawn // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_BombSpawnState implements _BombSpawnState {
  const _$_BombSpawnState({this.lastSpawn = 0});

  @override
  @JsonKey()
  final int lastSpawn;

  @override
  String toString() {
    return 'BombSpawnState(lastSpawn: $lastSpawn)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BombSpawnState &&
            (identical(other.lastSpawn, lastSpawn) ||
                other.lastSpawn == lastSpawn));
  }

  @override
  int get hashCode => Object.hash(runtimeType, lastSpawn);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BombSpawnStateCopyWith<_$_BombSpawnState> get copyWith =>
      __$$_BombSpawnStateCopyWithImpl<_$_BombSpawnState>(this, _$identity);
}

abstract class _BombSpawnState implements BombSpawnState {
  const factory _BombSpawnState({final int lastSpawn}) = _$_BombSpawnState;

  @override
  int get lastSpawn;
  @override
  @JsonKey(ignore: true)
  _$$_BombSpawnStateCopyWith<_$_BombSpawnState> get copyWith =>
      throw _privateConstructorUsedError;
}
