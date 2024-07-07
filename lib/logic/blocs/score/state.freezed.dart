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
mixin _$ScoreState {
  int get score => throw _privateConstructorUsedError;
  GameState get gameState => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ScoreStateCopyWith<ScoreState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScoreStateCopyWith<$Res> {
  factory $ScoreStateCopyWith(
          ScoreState value, $Res Function(ScoreState) then) =
      _$ScoreStateCopyWithImpl<$Res, ScoreState>;
  @useResult
  $Res call({int score, GameState gameState});
}

/// @nodoc
class _$ScoreStateCopyWithImpl<$Res, $Val extends ScoreState>
    implements $ScoreStateCopyWith<$Res> {
  _$ScoreStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? score = null,
    Object? gameState = null,
  }) {
    return _then(_value.copyWith(
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int,
      gameState: null == gameState
          ? _value.gameState
          : gameState // ignore: cast_nullable_to_non_nullable
              as GameState,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ScoreStateCopyWith<$Res>
    implements $ScoreStateCopyWith<$Res> {
  factory _$$_ScoreStateCopyWith(
          _$_ScoreState value, $Res Function(_$_ScoreState) then) =
      __$$_ScoreStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int score, GameState gameState});
}

/// @nodoc
class __$$_ScoreStateCopyWithImpl<$Res>
    extends _$ScoreStateCopyWithImpl<$Res, _$_ScoreState>
    implements _$$_ScoreStateCopyWith<$Res> {
  __$$_ScoreStateCopyWithImpl(
      _$_ScoreState _value, $Res Function(_$_ScoreState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? score = null,
    Object? gameState = null,
  }) {
    return _then(_$_ScoreState(
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int,
      gameState: null == gameState
          ? _value.gameState
          : gameState // ignore: cast_nullable_to_non_nullable
              as GameState,
    ));
  }
}

/// @nodoc

class _$_ScoreState extends _ScoreState {
  const _$_ScoreState({this.score = 0, this.gameState = GameState.waitStart})
      : super._();

  @override
  @JsonKey()
  final int score;
  @override
  @JsonKey()
  final GameState gameState;

  @override
  String toString() {
    return 'ScoreState(score: $score, gameState: $gameState)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ScoreState &&
            (identical(other.score, score) || other.score == score) &&
            (identical(other.gameState, gameState) ||
                other.gameState == gameState));
  }

  @override
  int get hashCode => Object.hash(runtimeType, score, gameState);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ScoreStateCopyWith<_$_ScoreState> get copyWith =>
      __$$_ScoreStateCopyWithImpl<_$_ScoreState>(this, _$identity);
}

abstract class _ScoreState extends ScoreState {
  const factory _ScoreState({final int score, final GameState gameState}) =
      _$_ScoreState;
  const _ScoreState._() : super._();

  @override
  int get score;
  @override
  GameState get gameState;
  @override
  @JsonKey(ignore: true)
  _$$_ScoreStateCopyWith<_$_ScoreState> get copyWith =>
      throw _privateConstructorUsedError;
}
