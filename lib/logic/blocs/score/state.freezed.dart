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
class _$ScoreStateTearOff {
  const _$ScoreStateTearOff();

  _ScoreState call({int score = 0, GameState gameState = GameState.waitStart}) {
    return _ScoreState(
      score: score,
      gameState: gameState,
    );
  }
}

/// @nodoc
const $ScoreState = _$ScoreStateTearOff();

/// @nodoc
mixin _$ScoreState {
  int get score => throw _privateConstructorUsedError;
  GameState get gameState => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ScoreStateCopyWith<ScoreState> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScoreStateCopyWith<$Res> {
  factory $ScoreStateCopyWith(ScoreState value, $Res Function(ScoreState) then) = _$ScoreStateCopyWithImpl<$Res>;
  $Res call({int score, GameState gameState});
}

/// @nodoc
class _$ScoreStateCopyWithImpl<$Res> implements $ScoreStateCopyWith<$Res> {
  _$ScoreStateCopyWithImpl(this._value, this._then);

  final ScoreState _value;
  // ignore: unused_field
  final $Res Function(ScoreState) _then;

  @override
  $Res call({
    Object? score = freezed,
    Object? gameState = freezed,
  }) {
    return _then(_value.copyWith(
      score: score == freezed
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int,
      gameState: gameState == freezed
          ? _value.gameState
          : gameState // ignore: cast_nullable_to_non_nullable
              as GameState,
    ));
  }
}

/// @nodoc
abstract class _$ScoreStateCopyWith<$Res> implements $ScoreStateCopyWith<$Res> {
  factory _$ScoreStateCopyWith(_ScoreState value, $Res Function(_ScoreState) then) = __$ScoreStateCopyWithImpl<$Res>;
  @override
  $Res call({int score, GameState gameState});
}

/// @nodoc
class __$ScoreStateCopyWithImpl<$Res> extends _$ScoreStateCopyWithImpl<$Res> implements _$ScoreStateCopyWith<$Res> {
  __$ScoreStateCopyWithImpl(_ScoreState _value, $Res Function(_ScoreState) _then)
      : super(_value, (v) => _then(v as _ScoreState));

  @override
  _ScoreState get _value => super._value as _ScoreState;

  @override
  $Res call({
    Object? score = freezed,
    Object? gameState = freezed,
  }) {
    return _then(_ScoreState(
      score: score == freezed
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int,
      gameState: gameState == freezed
          ? _value.gameState
          : gameState // ignore: cast_nullable_to_non_nullable
              as GameState,
    ));
  }
}

/// @nodoc

class _$_ScoreState extends _ScoreState {
  const _$_ScoreState({this.score = 0, this.gameState = GameState.waitStart}) : super._();

  @JsonKey(defaultValue: 0)
  @override
  final int score;
  @JsonKey(defaultValue: GameState.waitStart)
  @override
  final GameState gameState;

  @override
  String toString() {
    return 'ScoreState(score: $score, gameState: $gameState)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ScoreState &&
            (identical(other.score, score) || const DeepCollectionEquality().equals(other.score, score)) &&
            (identical(other.gameState, gameState) ||
                const DeepCollectionEquality().equals(other.gameState, gameState)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(score) ^
      const DeepCollectionEquality().hash(gameState);

  @JsonKey(ignore: true)
  @override
  _$ScoreStateCopyWith<_ScoreState> get copyWith => __$ScoreStateCopyWithImpl<_ScoreState>(this, _$identity);
}

abstract class _ScoreState extends ScoreState {
  const factory _ScoreState({int score, GameState gameState}) = _$_ScoreState;
  const _ScoreState._() : super._();

  @override
  int get score => throw _privateConstructorUsedError;
  @override
  GameState get gameState => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ScoreStateCopyWith<_ScoreState> get copyWith => throw _privateConstructorUsedError;
}
