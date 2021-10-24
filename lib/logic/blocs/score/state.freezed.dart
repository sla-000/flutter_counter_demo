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
class _$GameScoreStateTearOff {
  const _$GameScoreStateTearOff();

  _GameScoreState call({int score = 0, bool gameStarted = false}) {
    return _GameScoreState(
      score: score,
      gameStarted: gameStarted,
    );
  }
}

/// @nodoc
const $GameScoreState = _$GameScoreStateTearOff();

/// @nodoc
mixin _$GameScoreState {
  int get score => throw _privateConstructorUsedError;
  bool get gameStarted => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GameScoreStateCopyWith<GameScoreState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameScoreStateCopyWith<$Res> {
  factory $GameScoreStateCopyWith(
          GameScoreState value, $Res Function(GameScoreState) then) =
      _$GameScoreStateCopyWithImpl<$Res>;
  $Res call({int score, bool gameStarted});
}

/// @nodoc
class _$GameScoreStateCopyWithImpl<$Res>
    implements $GameScoreStateCopyWith<$Res> {
  _$GameScoreStateCopyWithImpl(this._value, this._then);

  final GameScoreState _value;
  // ignore: unused_field
  final $Res Function(GameScoreState) _then;

  @override
  $Res call({
    Object? score = freezed,
    Object? gameStarted = freezed,
  }) {
    return _then(_value.copyWith(
      score: score == freezed
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int,
      gameStarted: gameStarted == freezed
          ? _value.gameStarted
          : gameStarted // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$GameScoreStateCopyWith<$Res>
    implements $GameScoreStateCopyWith<$Res> {
  factory _$GameScoreStateCopyWith(
          _GameScoreState value, $Res Function(_GameScoreState) then) =
      __$GameScoreStateCopyWithImpl<$Res>;
  @override
  $Res call({int score, bool gameStarted});
}

/// @nodoc
class __$GameScoreStateCopyWithImpl<$Res>
    extends _$GameScoreStateCopyWithImpl<$Res>
    implements _$GameScoreStateCopyWith<$Res> {
  __$GameScoreStateCopyWithImpl(
      _GameScoreState _value, $Res Function(_GameScoreState) _then)
      : super(_value, (v) => _then(v as _GameScoreState));

  @override
  _GameScoreState get _value => super._value as _GameScoreState;

  @override
  $Res call({
    Object? score = freezed,
    Object? gameStarted = freezed,
  }) {
    return _then(_GameScoreState(
      score: score == freezed
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int,
      gameStarted: gameStarted == freezed
          ? _value.gameStarted
          : gameStarted // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_GameScoreState implements _GameScoreState {
  const _$_GameScoreState({this.score = 0, this.gameStarted = false});

  @JsonKey(defaultValue: 0)
  @override
  final int score;
  @JsonKey(defaultValue: false)
  @override
  final bool gameStarted;

  @override
  String toString() {
    return 'GameScoreState(score: $score, gameStarted: $gameStarted)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GameScoreState &&
            (identical(other.score, score) ||
                const DeepCollectionEquality().equals(other.score, score)) &&
            (identical(other.gameStarted, gameStarted) ||
                const DeepCollectionEquality()
                    .equals(other.gameStarted, gameStarted)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(score) ^
      const DeepCollectionEquality().hash(gameStarted);

  @JsonKey(ignore: true)
  @override
  _$GameScoreStateCopyWith<_GameScoreState> get copyWith =>
      __$GameScoreStateCopyWithImpl<_GameScoreState>(this, _$identity);
}

abstract class _GameScoreState implements GameScoreState {
  const factory _GameScoreState({int score, bool gameStarted}) =
      _$_GameScoreState;

  @override
  int get score => throw _privateConstructorUsedError;
  @override
  bool get gameStarted => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$GameScoreStateCopyWith<_GameScoreState> get copyWith =>
      throw _privateConstructorUsedError;
}
