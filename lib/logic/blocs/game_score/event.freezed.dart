// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$GameScoreEventTearOff {
  const _$GameScoreEventTearOff();

  GameScoreEventAdd add(int value) {
    return GameScoreEventAdd(
      value,
    );
  }
}

/// @nodoc
const $GameScoreEvent = _$GameScoreEventTearOff();

/// @nodoc
mixin _$GameScoreEvent {
  int get value => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int value) add,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int value)? add,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int value)? add,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GameScoreEventAdd value) add,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GameScoreEventAdd value)? add,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GameScoreEventAdd value)? add,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GameScoreEventCopyWith<GameScoreEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameScoreEventCopyWith<$Res> {
  factory $GameScoreEventCopyWith(
          GameScoreEvent value, $Res Function(GameScoreEvent) then) =
      _$GameScoreEventCopyWithImpl<$Res>;
  $Res call({int value});
}

/// @nodoc
class _$GameScoreEventCopyWithImpl<$Res>
    implements $GameScoreEventCopyWith<$Res> {
  _$GameScoreEventCopyWithImpl(this._value, this._then);

  final GameScoreEvent _value;
  // ignore: unused_field
  final $Res Function(GameScoreEvent) _then;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class $GameScoreEventAddCopyWith<$Res>
    implements $GameScoreEventCopyWith<$Res> {
  factory $GameScoreEventAddCopyWith(
          GameScoreEventAdd value, $Res Function(GameScoreEventAdd) then) =
      _$GameScoreEventAddCopyWithImpl<$Res>;
  @override
  $Res call({int value});
}

/// @nodoc
class _$GameScoreEventAddCopyWithImpl<$Res>
    extends _$GameScoreEventCopyWithImpl<$Res>
    implements $GameScoreEventAddCopyWith<$Res> {
  _$GameScoreEventAddCopyWithImpl(
      GameScoreEventAdd _value, $Res Function(GameScoreEventAdd) _then)
      : super(_value, (v) => _then(v as GameScoreEventAdd));

  @override
  GameScoreEventAdd get _value => super._value as GameScoreEventAdd;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(GameScoreEventAdd(
      value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$GameScoreEventAdd implements GameScoreEventAdd {
  const _$GameScoreEventAdd(this.value);

  @override
  final int value;

  @override
  String toString() {
    return 'GameScoreEvent.add(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GameScoreEventAdd &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(value);

  @JsonKey(ignore: true)
  @override
  $GameScoreEventAddCopyWith<GameScoreEventAdd> get copyWith =>
      _$GameScoreEventAddCopyWithImpl<GameScoreEventAdd>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int value) add,
  }) {
    return add(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int value)? add,
  }) {
    return add?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int value)? add,
    required TResult orElse(),
  }) {
    if (add != null) {
      return add(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GameScoreEventAdd value) add,
  }) {
    return add(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GameScoreEventAdd value)? add,
  }) {
    return add?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GameScoreEventAdd value)? add,
    required TResult orElse(),
  }) {
    if (add != null) {
      return add(this);
    }
    return orElse();
  }
}

abstract class GameScoreEventAdd implements GameScoreEvent {
  const factory GameScoreEventAdd(int value) = _$GameScoreEventAdd;

  @override
  int get value => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $GameScoreEventAddCopyWith<GameScoreEventAdd> get copyWith =>
      throw _privateConstructorUsedError;
}
