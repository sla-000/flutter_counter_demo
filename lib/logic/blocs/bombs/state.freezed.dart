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
class _$BombsStateTearOff {
  const _$BombsStateTearOff();

  _BombsState call({List<Bomb> bombs = const <Bomb>[]}) {
    return _BombsState(
      bombs: bombs,
    );
  }
}

/// @nodoc
const $BombsState = _$BombsStateTearOff();

/// @nodoc
mixin _$BombsState {
  List<Bomb> get bombs => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BombsStateCopyWith<BombsState> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BombsStateCopyWith<$Res> {
  factory $BombsStateCopyWith(BombsState value, $Res Function(BombsState) then) = _$BombsStateCopyWithImpl<$Res>;
  $Res call({List<Bomb> bombs});
}

/// @nodoc
class _$BombsStateCopyWithImpl<$Res> implements $BombsStateCopyWith<$Res> {
  _$BombsStateCopyWithImpl(this._value, this._then);

  final BombsState _value;
  // ignore: unused_field
  final $Res Function(BombsState) _then;

  @override
  $Res call({
    Object? bombs = freezed,
  }) {
    return _then(_value.copyWith(
      bombs: bombs == freezed
          ? _value.bombs
          : bombs // ignore: cast_nullable_to_non_nullable
              as List<Bomb>,
    ));
  }
}

/// @nodoc
abstract class _$BombsStateCopyWith<$Res> implements $BombsStateCopyWith<$Res> {
  factory _$BombsStateCopyWith(_BombsState value, $Res Function(_BombsState) then) = __$BombsStateCopyWithImpl<$Res>;
  @override
  $Res call({List<Bomb> bombs});
}

/// @nodoc
class __$BombsStateCopyWithImpl<$Res> extends _$BombsStateCopyWithImpl<$Res> implements _$BombsStateCopyWith<$Res> {
  __$BombsStateCopyWithImpl(_BombsState _value, $Res Function(_BombsState) _then)
      : super(_value, (v) => _then(v as _BombsState));

  @override
  _BombsState get _value => super._value as _BombsState;

  @override
  $Res call({
    Object? bombs = freezed,
  }) {
    return _then(_BombsState(
      bombs: bombs == freezed
          ? _value.bombs
          : bombs // ignore: cast_nullable_to_non_nullable
              as List<Bomb>,
    ));
  }
}

/// @nodoc

class _$_BombsState implements _BombsState {
  const _$_BombsState({this.bombs = const <Bomb>[]});

  @JsonKey(defaultValue: const <Bomb>[])
  @override
  final List<Bomb> bombs;

  @override
  String toString() {
    return 'BombsState(bombs: $bombs)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BombsState &&
            (identical(other.bombs, bombs) || const DeepCollectionEquality().equals(other.bombs, bombs)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(bombs);

  @JsonKey(ignore: true)
  @override
  _$BombsStateCopyWith<_BombsState> get copyWith => __$BombsStateCopyWithImpl<_BombsState>(this, _$identity);
}

abstract class _BombsState implements BombsState {
  const factory _BombsState({List<Bomb> bombs}) = _$_BombsState;

  @override
  List<Bomb> get bombs => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$BombsStateCopyWith<_BombsState> get copyWith => throw _privateConstructorUsedError;
}
