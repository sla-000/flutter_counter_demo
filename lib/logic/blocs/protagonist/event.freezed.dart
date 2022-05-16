// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ProtagonistEventTearOff {
  const _$ProtagonistEventTearOff();

  ProtagonistEventInit init(Vector center) {
    return ProtagonistEventInit(
      center,
    );
  }

  ProtagonistEventShoot shoot() {
    return const ProtagonistEventShoot();
  }

  ProtagonistEventUpdate update(double delta) {
    return ProtagonistEventUpdate(
      delta,
    );
  }
}

/// @nodoc
const $ProtagonistEvent = _$ProtagonistEventTearOff();

/// @nodoc
mixin _$ProtagonistEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Vector center) init,
    required TResult Function() shoot,
    required TResult Function(double delta) update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Vector center)? init,
    TResult Function()? shoot,
    TResult Function(double delta)? update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Vector center)? init,
    TResult Function()? shoot,
    TResult Function(double delta)? update,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProtagonistEventInit value) init,
    required TResult Function(ProtagonistEventShoot value) shoot,
    required TResult Function(ProtagonistEventUpdate value) update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ProtagonistEventInit value)? init,
    TResult Function(ProtagonistEventShoot value)? shoot,
    TResult Function(ProtagonistEventUpdate value)? update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProtagonistEventInit value)? init,
    TResult Function(ProtagonistEventShoot value)? shoot,
    TResult Function(ProtagonistEventUpdate value)? update,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProtagonistEventCopyWith<$Res> {
  factory $ProtagonistEventCopyWith(ProtagonistEvent value, $Res Function(ProtagonistEvent) then) =
      _$ProtagonistEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProtagonistEventCopyWithImpl<$Res> implements $ProtagonistEventCopyWith<$Res> {
  _$ProtagonistEventCopyWithImpl(this._value, this._then);

  final ProtagonistEvent _value;
  // ignore: unused_field
  final $Res Function(ProtagonistEvent) _then;
}

/// @nodoc
abstract class $ProtagonistEventInitCopyWith<$Res> {
  factory $ProtagonistEventInitCopyWith(ProtagonistEventInit value, $Res Function(ProtagonistEventInit) then) =
      _$ProtagonistEventInitCopyWithImpl<$Res>;
  $Res call({Vector center});
}

/// @nodoc
class _$ProtagonistEventInitCopyWithImpl<$Res> extends _$ProtagonistEventCopyWithImpl<$Res>
    implements $ProtagonistEventInitCopyWith<$Res> {
  _$ProtagonistEventInitCopyWithImpl(ProtagonistEventInit _value, $Res Function(ProtagonistEventInit) _then)
      : super(_value, (v) => _then(v as ProtagonistEventInit));

  @override
  ProtagonistEventInit get _value => super._value as ProtagonistEventInit;

  @override
  $Res call({
    Object? center = freezed,
  }) {
    return _then(ProtagonistEventInit(
      center == freezed
          ? _value.center
          : center // ignore: cast_nullable_to_non_nullable
              as Vector,
    ));
  }
}

/// @nodoc

class _$ProtagonistEventInit implements ProtagonistEventInit {
  const _$ProtagonistEventInit(this.center);

  @override
  final Vector center;

  @override
  String toString() {
    return 'ProtagonistEvent.init(center: $center)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ProtagonistEventInit &&
            const DeepCollectionEquality().equals(other.center, center));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(center));

  @JsonKey(ignore: true)
  @override
  $ProtagonistEventInitCopyWith<ProtagonistEventInit> get copyWith =>
      _$ProtagonistEventInitCopyWithImpl<ProtagonistEventInit>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Vector center) init,
    required TResult Function() shoot,
    required TResult Function(double delta) update,
  }) {
    return init(center);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Vector center)? init,
    TResult Function()? shoot,
    TResult Function(double delta)? update,
  }) {
    return init?.call(center);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Vector center)? init,
    TResult Function()? shoot,
    TResult Function(double delta)? update,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(center);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProtagonistEventInit value) init,
    required TResult Function(ProtagonistEventShoot value) shoot,
    required TResult Function(ProtagonistEventUpdate value) update,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ProtagonistEventInit value)? init,
    TResult Function(ProtagonistEventShoot value)? shoot,
    TResult Function(ProtagonistEventUpdate value)? update,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProtagonistEventInit value)? init,
    TResult Function(ProtagonistEventShoot value)? shoot,
    TResult Function(ProtagonistEventUpdate value)? update,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class ProtagonistEventInit implements ProtagonistEvent {
  const factory ProtagonistEventInit(Vector center) = _$ProtagonistEventInit;

  Vector get center;
  @JsonKey(ignore: true)
  $ProtagonistEventInitCopyWith<ProtagonistEventInit> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProtagonistEventShootCopyWith<$Res> {
  factory $ProtagonistEventShootCopyWith(ProtagonistEventShoot value, $Res Function(ProtagonistEventShoot) then) =
      _$ProtagonistEventShootCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProtagonistEventShootCopyWithImpl<$Res> extends _$ProtagonistEventCopyWithImpl<$Res>
    implements $ProtagonistEventShootCopyWith<$Res> {
  _$ProtagonistEventShootCopyWithImpl(ProtagonistEventShoot _value, $Res Function(ProtagonistEventShoot) _then)
      : super(_value, (v) => _then(v as ProtagonistEventShoot));

  @override
  ProtagonistEventShoot get _value => super._value as ProtagonistEventShoot;
}

/// @nodoc

class _$ProtagonistEventShoot implements ProtagonistEventShoot {
  const _$ProtagonistEventShoot();

  @override
  String toString() {
    return 'ProtagonistEvent.shoot()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other.runtimeType == runtimeType && other is ProtagonistEventShoot);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Vector center) init,
    required TResult Function() shoot,
    required TResult Function(double delta) update,
  }) {
    return shoot();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Vector center)? init,
    TResult Function()? shoot,
    TResult Function(double delta)? update,
  }) {
    return shoot?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Vector center)? init,
    TResult Function()? shoot,
    TResult Function(double delta)? update,
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
    required TResult Function(ProtagonistEventInit value) init,
    required TResult Function(ProtagonistEventShoot value) shoot,
    required TResult Function(ProtagonistEventUpdate value) update,
  }) {
    return shoot(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ProtagonistEventInit value)? init,
    TResult Function(ProtagonistEventShoot value)? shoot,
    TResult Function(ProtagonistEventUpdate value)? update,
  }) {
    return shoot?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProtagonistEventInit value)? init,
    TResult Function(ProtagonistEventShoot value)? shoot,
    TResult Function(ProtagonistEventUpdate value)? update,
    required TResult orElse(),
  }) {
    if (shoot != null) {
      return shoot(this);
    }
    return orElse();
  }
}

abstract class ProtagonistEventShoot implements ProtagonistEvent {
  const factory ProtagonistEventShoot() = _$ProtagonistEventShoot;
}

/// @nodoc
abstract class $ProtagonistEventUpdateCopyWith<$Res> {
  factory $ProtagonistEventUpdateCopyWith(ProtagonistEventUpdate value, $Res Function(ProtagonistEventUpdate) then) =
      _$ProtagonistEventUpdateCopyWithImpl<$Res>;
  $Res call({double delta});
}

/// @nodoc
class _$ProtagonistEventUpdateCopyWithImpl<$Res> extends _$ProtagonistEventCopyWithImpl<$Res>
    implements $ProtagonistEventUpdateCopyWith<$Res> {
  _$ProtagonistEventUpdateCopyWithImpl(ProtagonistEventUpdate _value, $Res Function(ProtagonistEventUpdate) _then)
      : super(_value, (v) => _then(v as ProtagonistEventUpdate));

  @override
  ProtagonistEventUpdate get _value => super._value as ProtagonistEventUpdate;

  @override
  $Res call({
    Object? delta = freezed,
  }) {
    return _then(ProtagonistEventUpdate(
      delta == freezed
          ? _value.delta
          : delta // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$ProtagonistEventUpdate implements ProtagonistEventUpdate {
  const _$ProtagonistEventUpdate(this.delta);

  @override
  final double delta;

  @override
  String toString() {
    return 'ProtagonistEvent.update(delta: $delta)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ProtagonistEventUpdate &&
            const DeepCollectionEquality().equals(other.delta, delta));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(delta));

  @JsonKey(ignore: true)
  @override
  $ProtagonistEventUpdateCopyWith<ProtagonistEventUpdate> get copyWith =>
      _$ProtagonistEventUpdateCopyWithImpl<ProtagonistEventUpdate>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Vector center) init,
    required TResult Function() shoot,
    required TResult Function(double delta) update,
  }) {
    return update(delta);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Vector center)? init,
    TResult Function()? shoot,
    TResult Function(double delta)? update,
  }) {
    return update?.call(delta);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Vector center)? init,
    TResult Function()? shoot,
    TResult Function(double delta)? update,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(delta);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProtagonistEventInit value) init,
    required TResult Function(ProtagonistEventShoot value) shoot,
    required TResult Function(ProtagonistEventUpdate value) update,
  }) {
    return update(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ProtagonistEventInit value)? init,
    TResult Function(ProtagonistEventShoot value)? shoot,
    TResult Function(ProtagonistEventUpdate value)? update,
  }) {
    return update?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProtagonistEventInit value)? init,
    TResult Function(ProtagonistEventShoot value)? shoot,
    TResult Function(ProtagonistEventUpdate value)? update,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(this);
    }
    return orElse();
  }
}

abstract class ProtagonistEventUpdate implements ProtagonistEvent {
  const factory ProtagonistEventUpdate(double delta) = _$ProtagonistEventUpdate;

  double get delta;
  @JsonKey(ignore: true)
  $ProtagonistEventUpdateCopyWith<ProtagonistEventUpdate> get copyWith => throw _privateConstructorUsedError;
}
