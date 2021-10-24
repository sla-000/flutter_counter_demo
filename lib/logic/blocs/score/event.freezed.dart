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

  GameScoreEventShoot shoot() {
    return const GameScoreEventShoot();
  }

  GameScoreEventKill kill() {
    return const GameScoreEventKill();
  }

  GameScoreEventDead dead() {
    return const GameScoreEventDead();
  }
}

/// @nodoc
const $GameScoreEvent = _$GameScoreEventTearOff();

/// @nodoc
mixin _$GameScoreEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() shoot,
    required TResult Function() kill,
    required TResult Function() dead,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? shoot,
    TResult Function()? kill,
    TResult Function()? dead,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? shoot,
    TResult Function()? kill,
    TResult Function()? dead,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GameScoreEventShoot value) shoot,
    required TResult Function(GameScoreEventKill value) kill,
    required TResult Function(GameScoreEventDead value) dead,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GameScoreEventShoot value)? shoot,
    TResult Function(GameScoreEventKill value)? kill,
    TResult Function(GameScoreEventDead value)? dead,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GameScoreEventShoot value)? shoot,
    TResult Function(GameScoreEventKill value)? kill,
    TResult Function(GameScoreEventDead value)? dead,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameScoreEventCopyWith<$Res> {
  factory $GameScoreEventCopyWith(
          GameScoreEvent value, $Res Function(GameScoreEvent) then) =
      _$GameScoreEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$GameScoreEventCopyWithImpl<$Res>
    implements $GameScoreEventCopyWith<$Res> {
  _$GameScoreEventCopyWithImpl(this._value, this._then);

  final GameScoreEvent _value;
  // ignore: unused_field
  final $Res Function(GameScoreEvent) _then;
}

/// @nodoc
abstract class $GameScoreEventShootCopyWith<$Res> {
  factory $GameScoreEventShootCopyWith(
          GameScoreEventShoot value, $Res Function(GameScoreEventShoot) then) =
      _$GameScoreEventShootCopyWithImpl<$Res>;
}

/// @nodoc
class _$GameScoreEventShootCopyWithImpl<$Res>
    extends _$GameScoreEventCopyWithImpl<$Res>
    implements $GameScoreEventShootCopyWith<$Res> {
  _$GameScoreEventShootCopyWithImpl(
      GameScoreEventShoot _value, $Res Function(GameScoreEventShoot) _then)
      : super(_value, (v) => _then(v as GameScoreEventShoot));

  @override
  GameScoreEventShoot get _value => super._value as GameScoreEventShoot;
}

/// @nodoc

class _$GameScoreEventShoot implements GameScoreEventShoot {
  const _$GameScoreEventShoot();

  @override
  String toString() {
    return 'GameScoreEvent.shoot()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is GameScoreEventShoot);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() shoot,
    required TResult Function() kill,
    required TResult Function() dead,
  }) {
    return shoot();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? shoot,
    TResult Function()? kill,
    TResult Function()? dead,
  }) {
    return shoot?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? shoot,
    TResult Function()? kill,
    TResult Function()? dead,
    required TResult orElse(),
  }) {
    if (shoot != null) {
      return shoot();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GameScoreEventShoot value) shoot,
    required TResult Function(GameScoreEventKill value) kill,
    required TResult Function(GameScoreEventDead value) dead,
  }) {
    return shoot(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GameScoreEventShoot value)? shoot,
    TResult Function(GameScoreEventKill value)? kill,
    TResult Function(GameScoreEventDead value)? dead,
  }) {
    return shoot?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GameScoreEventShoot value)? shoot,
    TResult Function(GameScoreEventKill value)? kill,
    TResult Function(GameScoreEventDead value)? dead,
    required TResult orElse(),
  }) {
    if (shoot != null) {
      return shoot(this);
    }
    return orElse();
  }
}

abstract class GameScoreEventShoot implements GameScoreEvent {
  const factory GameScoreEventShoot() = _$GameScoreEventShoot;
}

/// @nodoc
abstract class $GameScoreEventKillCopyWith<$Res> {
  factory $GameScoreEventKillCopyWith(
          GameScoreEventKill value, $Res Function(GameScoreEventKill) then) =
      _$GameScoreEventKillCopyWithImpl<$Res>;
}

/// @nodoc
class _$GameScoreEventKillCopyWithImpl<$Res>
    extends _$GameScoreEventCopyWithImpl<$Res>
    implements $GameScoreEventKillCopyWith<$Res> {
  _$GameScoreEventKillCopyWithImpl(
      GameScoreEventKill _value, $Res Function(GameScoreEventKill) _then)
      : super(_value, (v) => _then(v as GameScoreEventKill));

  @override
  GameScoreEventKill get _value => super._value as GameScoreEventKill;
}

/// @nodoc

class _$GameScoreEventKill implements GameScoreEventKill {
  const _$GameScoreEventKill();

  @override
  String toString() {
    return 'GameScoreEvent.kill()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is GameScoreEventKill);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() shoot,
    required TResult Function() kill,
    required TResult Function() dead,
  }) {
    return kill();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? shoot,
    TResult Function()? kill,
    TResult Function()? dead,
  }) {
    return kill?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? shoot,
    TResult Function()? kill,
    TResult Function()? dead,
    required TResult orElse(),
  }) {
    if (kill != null) {
      return kill();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GameScoreEventShoot value) shoot,
    required TResult Function(GameScoreEventKill value) kill,
    required TResult Function(GameScoreEventDead value) dead,
  }) {
    return kill(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GameScoreEventShoot value)? shoot,
    TResult Function(GameScoreEventKill value)? kill,
    TResult Function(GameScoreEventDead value)? dead,
  }) {
    return kill?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GameScoreEventShoot value)? shoot,
    TResult Function(GameScoreEventKill value)? kill,
    TResult Function(GameScoreEventDead value)? dead,
    required TResult orElse(),
  }) {
    if (kill != null) {
      return kill(this);
    }
    return orElse();
  }
}

abstract class GameScoreEventKill implements GameScoreEvent {
  const factory GameScoreEventKill() = _$GameScoreEventKill;
}

/// @nodoc
abstract class $GameScoreEventDeadCopyWith<$Res> {
  factory $GameScoreEventDeadCopyWith(
          GameScoreEventDead value, $Res Function(GameScoreEventDead) then) =
      _$GameScoreEventDeadCopyWithImpl<$Res>;
}

/// @nodoc
class _$GameScoreEventDeadCopyWithImpl<$Res>
    extends _$GameScoreEventCopyWithImpl<$Res>
    implements $GameScoreEventDeadCopyWith<$Res> {
  _$GameScoreEventDeadCopyWithImpl(
      GameScoreEventDead _value, $Res Function(GameScoreEventDead) _then)
      : super(_value, (v) => _then(v as GameScoreEventDead));

  @override
  GameScoreEventDead get _value => super._value as GameScoreEventDead;
}

/// @nodoc

class _$GameScoreEventDead implements GameScoreEventDead {
  const _$GameScoreEventDead();

  @override
  String toString() {
    return 'GameScoreEvent.dead()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is GameScoreEventDead);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() shoot,
    required TResult Function() kill,
    required TResult Function() dead,
  }) {
    return dead();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? shoot,
    TResult Function()? kill,
    TResult Function()? dead,
  }) {
    return dead?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? shoot,
    TResult Function()? kill,
    TResult Function()? dead,
    required TResult orElse(),
  }) {
    if (dead != null) {
      return dead();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GameScoreEventShoot value) shoot,
    required TResult Function(GameScoreEventKill value) kill,
    required TResult Function(GameScoreEventDead value) dead,
  }) {
    return dead(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GameScoreEventShoot value)? shoot,
    TResult Function(GameScoreEventKill value)? kill,
    TResult Function(GameScoreEventDead value)? dead,
  }) {
    return dead?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GameScoreEventShoot value)? shoot,
    TResult Function(GameScoreEventKill value)? kill,
    TResult Function(GameScoreEventDead value)? dead,
    required TResult orElse(),
  }) {
    if (dead != null) {
      return dead(this);
    }
    return orElse();
  }
}

abstract class GameScoreEventDead implements GameScoreEvent {
  const factory GameScoreEventDead() = _$GameScoreEventDead;
}
