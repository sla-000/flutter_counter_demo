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
class _$ScoreEventTearOff {
  const _$ScoreEventTearOff();

  ScoreEventShoot shoot() {
    return const ScoreEventShoot();
  }

  ScoreEventKill kill() {
    return const ScoreEventKill();
  }

  ScoreEventDead dead() {
    return const ScoreEventDead();
  }
}

/// @nodoc
const $ScoreEvent = _$ScoreEventTearOff();

/// @nodoc
mixin _$ScoreEvent {
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
    required TResult Function(ScoreEventShoot value) shoot,
    required TResult Function(ScoreEventKill value) kill,
    required TResult Function(ScoreEventDead value) dead,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ScoreEventShoot value)? shoot,
    TResult Function(ScoreEventKill value)? kill,
    TResult Function(ScoreEventDead value)? dead,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ScoreEventShoot value)? shoot,
    TResult Function(ScoreEventKill value)? kill,
    TResult Function(ScoreEventDead value)? dead,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScoreEventCopyWith<$Res> {
  factory $ScoreEventCopyWith(
          ScoreEvent value, $Res Function(ScoreEvent) then) =
      _$ScoreEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ScoreEventCopyWithImpl<$Res> implements $ScoreEventCopyWith<$Res> {
  _$ScoreEventCopyWithImpl(this._value, this._then);

  final ScoreEvent _value;
  // ignore: unused_field
  final $Res Function(ScoreEvent) _then;
}

/// @nodoc
abstract class $ScoreEventShootCopyWith<$Res> {
  factory $ScoreEventShootCopyWith(
          ScoreEventShoot value, $Res Function(ScoreEventShoot) then) =
      _$ScoreEventShootCopyWithImpl<$Res>;
}

/// @nodoc
class _$ScoreEventShootCopyWithImpl<$Res> extends _$ScoreEventCopyWithImpl<$Res>
    implements $ScoreEventShootCopyWith<$Res> {
  _$ScoreEventShootCopyWithImpl(
      ScoreEventShoot _value, $Res Function(ScoreEventShoot) _then)
      : super(_value, (v) => _then(v as ScoreEventShoot));

  @override
  ScoreEventShoot get _value => super._value as ScoreEventShoot;
}

/// @nodoc

class _$ScoreEventShoot implements ScoreEventShoot {
  const _$ScoreEventShoot();

  @override
  String toString() {
    return 'ScoreEvent.shoot()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ScoreEventShoot);
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
    required TResult Function(ScoreEventShoot value) shoot,
    required TResult Function(ScoreEventKill value) kill,
    required TResult Function(ScoreEventDead value) dead,
  }) {
    return shoot(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ScoreEventShoot value)? shoot,
    TResult Function(ScoreEventKill value)? kill,
    TResult Function(ScoreEventDead value)? dead,
  }) {
    return shoot?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ScoreEventShoot value)? shoot,
    TResult Function(ScoreEventKill value)? kill,
    TResult Function(ScoreEventDead value)? dead,
    required TResult orElse(),
  }) {
    if (shoot != null) {
      return shoot(this);
    }
    return orElse();
  }
}

abstract class ScoreEventShoot implements ScoreEvent {
  const factory ScoreEventShoot() = _$ScoreEventShoot;
}

/// @nodoc
abstract class $ScoreEventKillCopyWith<$Res> {
  factory $ScoreEventKillCopyWith(
          ScoreEventKill value, $Res Function(ScoreEventKill) then) =
      _$ScoreEventKillCopyWithImpl<$Res>;
}

/// @nodoc
class _$ScoreEventKillCopyWithImpl<$Res> extends _$ScoreEventCopyWithImpl<$Res>
    implements $ScoreEventKillCopyWith<$Res> {
  _$ScoreEventKillCopyWithImpl(
      ScoreEventKill _value, $Res Function(ScoreEventKill) _then)
      : super(_value, (v) => _then(v as ScoreEventKill));

  @override
  ScoreEventKill get _value => super._value as ScoreEventKill;
}

/// @nodoc

class _$ScoreEventKill implements ScoreEventKill {
  const _$ScoreEventKill();

  @override
  String toString() {
    return 'ScoreEvent.kill()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ScoreEventKill);
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
    required TResult Function(ScoreEventShoot value) shoot,
    required TResult Function(ScoreEventKill value) kill,
    required TResult Function(ScoreEventDead value) dead,
  }) {
    return kill(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ScoreEventShoot value)? shoot,
    TResult Function(ScoreEventKill value)? kill,
    TResult Function(ScoreEventDead value)? dead,
  }) {
    return kill?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ScoreEventShoot value)? shoot,
    TResult Function(ScoreEventKill value)? kill,
    TResult Function(ScoreEventDead value)? dead,
    required TResult orElse(),
  }) {
    if (kill != null) {
      return kill(this);
    }
    return orElse();
  }
}

abstract class ScoreEventKill implements ScoreEvent {
  const factory ScoreEventKill() = _$ScoreEventKill;
}

/// @nodoc
abstract class $ScoreEventDeadCopyWith<$Res> {
  factory $ScoreEventDeadCopyWith(
          ScoreEventDead value, $Res Function(ScoreEventDead) then) =
      _$ScoreEventDeadCopyWithImpl<$Res>;
}

/// @nodoc
class _$ScoreEventDeadCopyWithImpl<$Res> extends _$ScoreEventCopyWithImpl<$Res>
    implements $ScoreEventDeadCopyWith<$Res> {
  _$ScoreEventDeadCopyWithImpl(
      ScoreEventDead _value, $Res Function(ScoreEventDead) _then)
      : super(_value, (v) => _then(v as ScoreEventDead));

  @override
  ScoreEventDead get _value => super._value as ScoreEventDead;
}

/// @nodoc

class _$ScoreEventDead implements ScoreEventDead {
  const _$ScoreEventDead();

  @override
  String toString() {
    return 'ScoreEvent.dead()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ScoreEventDead);
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
    required TResult Function(ScoreEventShoot value) shoot,
    required TResult Function(ScoreEventKill value) kill,
    required TResult Function(ScoreEventDead value) dead,
  }) {
    return dead(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ScoreEventShoot value)? shoot,
    TResult Function(ScoreEventKill value)? kill,
    TResult Function(ScoreEventDead value)? dead,
  }) {
    return dead?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ScoreEventShoot value)? shoot,
    TResult Function(ScoreEventKill value)? kill,
    TResult Function(ScoreEventDead value)? dead,
    required TResult orElse(),
  }) {
    if (dead != null) {
      return dead(this);
    }
    return orElse();
  }
}

abstract class ScoreEventDead implements ScoreEvent {
  const factory ScoreEventDead() = _$ScoreEventDead;
}
