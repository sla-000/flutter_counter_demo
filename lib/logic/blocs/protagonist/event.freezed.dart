// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
    TResult? Function(Vector center)? init,
    TResult? Function()? shoot,
    TResult? Function(double delta)? update,
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
    TResult? Function(ProtagonistEventInit value)? init,
    TResult? Function(ProtagonistEventShoot value)? shoot,
    TResult? Function(ProtagonistEventUpdate value)? update,
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
  factory $ProtagonistEventCopyWith(
          ProtagonistEvent value, $Res Function(ProtagonistEvent) then) =
      _$ProtagonistEventCopyWithImpl<$Res, ProtagonistEvent>;
}

/// @nodoc
class _$ProtagonistEventCopyWithImpl<$Res, $Val extends ProtagonistEvent>
    implements $ProtagonistEventCopyWith<$Res> {
  _$ProtagonistEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ProtagonistEventInitCopyWith<$Res> {
  factory _$$ProtagonistEventInitCopyWith(_$ProtagonistEventInit value,
          $Res Function(_$ProtagonistEventInit) then) =
      __$$ProtagonistEventInitCopyWithImpl<$Res>;
  @useResult
  $Res call({Vector center});
}

/// @nodoc
class __$$ProtagonistEventInitCopyWithImpl<$Res>
    extends _$ProtagonistEventCopyWithImpl<$Res, _$ProtagonistEventInit>
    implements _$$ProtagonistEventInitCopyWith<$Res> {
  __$$ProtagonistEventInitCopyWithImpl(_$ProtagonistEventInit _value,
      $Res Function(_$ProtagonistEventInit) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? center = null,
  }) {
    return _then(_$ProtagonistEventInit(
      null == center
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
            other is _$ProtagonistEventInit &&
            (identical(other.center, center) || other.center == center));
  }

  @override
  int get hashCode => Object.hash(runtimeType, center);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProtagonistEventInitCopyWith<_$ProtagonistEventInit> get copyWith =>
      __$$ProtagonistEventInitCopyWithImpl<_$ProtagonistEventInit>(
          this, _$identity);

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
    TResult? Function(Vector center)? init,
    TResult? Function()? shoot,
    TResult? Function(double delta)? update,
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
    TResult? Function(ProtagonistEventInit value)? init,
    TResult? Function(ProtagonistEventShoot value)? shoot,
    TResult? Function(ProtagonistEventUpdate value)? update,
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
  const factory ProtagonistEventInit(final Vector center) =
      _$ProtagonistEventInit;

  Vector get center;
  @JsonKey(ignore: true)
  _$$ProtagonistEventInitCopyWith<_$ProtagonistEventInit> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ProtagonistEventShootCopyWith<$Res> {
  factory _$$ProtagonistEventShootCopyWith(_$ProtagonistEventShoot value,
          $Res Function(_$ProtagonistEventShoot) then) =
      __$$ProtagonistEventShootCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProtagonistEventShootCopyWithImpl<$Res>
    extends _$ProtagonistEventCopyWithImpl<$Res, _$ProtagonistEventShoot>
    implements _$$ProtagonistEventShootCopyWith<$Res> {
  __$$ProtagonistEventShootCopyWithImpl(_$ProtagonistEventShoot _value,
      $Res Function(_$ProtagonistEventShoot) _then)
      : super(_value, _then);
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
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ProtagonistEventShoot);
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
    TResult? Function(Vector center)? init,
    TResult? Function()? shoot,
    TResult? Function(double delta)? update,
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
    TResult? Function(ProtagonistEventInit value)? init,
    TResult? Function(ProtagonistEventShoot value)? shoot,
    TResult? Function(ProtagonistEventUpdate value)? update,
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
abstract class _$$ProtagonistEventUpdateCopyWith<$Res> {
  factory _$$ProtagonistEventUpdateCopyWith(_$ProtagonistEventUpdate value,
          $Res Function(_$ProtagonistEventUpdate) then) =
      __$$ProtagonistEventUpdateCopyWithImpl<$Res>;
  @useResult
  $Res call({double delta});
}

/// @nodoc
class __$$ProtagonistEventUpdateCopyWithImpl<$Res>
    extends _$ProtagonistEventCopyWithImpl<$Res, _$ProtagonistEventUpdate>
    implements _$$ProtagonistEventUpdateCopyWith<$Res> {
  __$$ProtagonistEventUpdateCopyWithImpl(_$ProtagonistEventUpdate _value,
      $Res Function(_$ProtagonistEventUpdate) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? delta = null,
  }) {
    return _then(_$ProtagonistEventUpdate(
      null == delta
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
            other is _$ProtagonistEventUpdate &&
            (identical(other.delta, delta) || other.delta == delta));
  }

  @override
  int get hashCode => Object.hash(runtimeType, delta);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProtagonistEventUpdateCopyWith<_$ProtagonistEventUpdate> get copyWith =>
      __$$ProtagonistEventUpdateCopyWithImpl<_$ProtagonistEventUpdate>(
          this, _$identity);

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
    TResult? Function(Vector center)? init,
    TResult? Function()? shoot,
    TResult? Function(double delta)? update,
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
    TResult? Function(ProtagonistEventInit value)? init,
    TResult? Function(ProtagonistEventShoot value)? shoot,
    TResult? Function(ProtagonistEventUpdate value)? update,
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
  const factory ProtagonistEventUpdate(final double delta) =
      _$ProtagonistEventUpdate;

  double get delta;
  @JsonKey(ignore: true)
  _$$ProtagonistEventUpdateCopyWith<_$ProtagonistEventUpdate> get copyWith =>
      throw _privateConstructorUsedError;
}
