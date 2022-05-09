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
class _$BulletsEventTearOff {
  const _$BulletsEventTearOff();

  BulletsEventInit init() {
    return const BulletsEventInit();
  }

  BulletsEventSetAll setAll(Iterable<Bullet> bullets) {
    return BulletsEventSetAll(
      bullets,
    );
  }

  BulletsEventAdd add(Bullet bullet) {
    return BulletsEventAdd(
      bullet,
    );
  }

  BulletsEventRemoveAll removeAll(Iterable<Object> bombs) {
    return BulletsEventRemoveAll(
      bombs,
    );
  }

  BulletsEventUpdate update(double delta) {
    return BulletsEventUpdate(
      delta,
    );
  }
}

/// @nodoc
const $BulletsEvent = _$BulletsEventTearOff();

/// @nodoc
mixin _$BulletsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(Iterable<Bullet> bullets) setAll,
    required TResult Function(Bullet bullet) add,
    required TResult Function(Iterable<Object> bombs) removeAll,
    required TResult Function(double delta) update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(Iterable<Bullet> bullets)? setAll,
    TResult Function(Bullet bullet)? add,
    TResult Function(Iterable<Object> bombs)? removeAll,
    TResult Function(double delta)? update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(Iterable<Bullet> bullets)? setAll,
    TResult Function(Bullet bullet)? add,
    TResult Function(Iterable<Object> bombs)? removeAll,
    TResult Function(double delta)? update,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BulletsEventInit value) init,
    required TResult Function(BulletsEventSetAll value) setAll,
    required TResult Function(BulletsEventAdd value) add,
    required TResult Function(BulletsEventRemoveAll value) removeAll,
    required TResult Function(BulletsEventUpdate value) update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(BulletsEventInit value)? init,
    TResult Function(BulletsEventSetAll value)? setAll,
    TResult Function(BulletsEventAdd value)? add,
    TResult Function(BulletsEventRemoveAll value)? removeAll,
    TResult Function(BulletsEventUpdate value)? update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BulletsEventInit value)? init,
    TResult Function(BulletsEventSetAll value)? setAll,
    TResult Function(BulletsEventAdd value)? add,
    TResult Function(BulletsEventRemoveAll value)? removeAll,
    TResult Function(BulletsEventUpdate value)? update,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BulletsEventCopyWith<$Res> {
  factory $BulletsEventCopyWith(BulletsEvent value, $Res Function(BulletsEvent) then) =
      _$BulletsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$BulletsEventCopyWithImpl<$Res> implements $BulletsEventCopyWith<$Res> {
  _$BulletsEventCopyWithImpl(this._value, this._then);

  final BulletsEvent _value;
  // ignore: unused_field
  final $Res Function(BulletsEvent) _then;
}

/// @nodoc
abstract class $BulletsEventInitCopyWith<$Res> {
  factory $BulletsEventInitCopyWith(BulletsEventInit value, $Res Function(BulletsEventInit) then) =
      _$BulletsEventInitCopyWithImpl<$Res>;
}

/// @nodoc
class _$BulletsEventInitCopyWithImpl<$Res> extends _$BulletsEventCopyWithImpl<$Res>
    implements $BulletsEventInitCopyWith<$Res> {
  _$BulletsEventInitCopyWithImpl(BulletsEventInit _value, $Res Function(BulletsEventInit) _then)
      : super(_value, (v) => _then(v as BulletsEventInit));

  @override
  BulletsEventInit get _value => super._value as BulletsEventInit;
}

/// @nodoc

class _$BulletsEventInit implements BulletsEventInit {
  const _$BulletsEventInit();

  @override
  String toString() {
    return 'BulletsEvent.init()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is BulletsEventInit);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(Iterable<Bullet> bullets) setAll,
    required TResult Function(Bullet bullet) add,
    required TResult Function(Iterable<Object> bombs) removeAll,
    required TResult Function(double delta) update,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(Iterable<Bullet> bullets)? setAll,
    TResult Function(Bullet bullet)? add,
    TResult Function(Iterable<Object> bombs)? removeAll,
    TResult Function(double delta)? update,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(Iterable<Bullet> bullets)? setAll,
    TResult Function(Bullet bullet)? add,
    TResult Function(Iterable<Object> bombs)? removeAll,
    TResult Function(double delta)? update,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BulletsEventInit value) init,
    required TResult Function(BulletsEventSetAll value) setAll,
    required TResult Function(BulletsEventAdd value) add,
    required TResult Function(BulletsEventRemoveAll value) removeAll,
    required TResult Function(BulletsEventUpdate value) update,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(BulletsEventInit value)? init,
    TResult Function(BulletsEventSetAll value)? setAll,
    TResult Function(BulletsEventAdd value)? add,
    TResult Function(BulletsEventRemoveAll value)? removeAll,
    TResult Function(BulletsEventUpdate value)? update,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BulletsEventInit value)? init,
    TResult Function(BulletsEventSetAll value)? setAll,
    TResult Function(BulletsEventAdd value)? add,
    TResult Function(BulletsEventRemoveAll value)? removeAll,
    TResult Function(BulletsEventUpdate value)? update,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class BulletsEventInit implements BulletsEvent {
  const factory BulletsEventInit() = _$BulletsEventInit;
}

/// @nodoc
abstract class $BulletsEventSetAllCopyWith<$Res> {
  factory $BulletsEventSetAllCopyWith(BulletsEventSetAll value, $Res Function(BulletsEventSetAll) then) =
      _$BulletsEventSetAllCopyWithImpl<$Res>;
  $Res call({Iterable<Bullet> bullets});
}

/// @nodoc
class _$BulletsEventSetAllCopyWithImpl<$Res> extends _$BulletsEventCopyWithImpl<$Res>
    implements $BulletsEventSetAllCopyWith<$Res> {
  _$BulletsEventSetAllCopyWithImpl(BulletsEventSetAll _value, $Res Function(BulletsEventSetAll) _then)
      : super(_value, (v) => _then(v as BulletsEventSetAll));

  @override
  BulletsEventSetAll get _value => super._value as BulletsEventSetAll;

  @override
  $Res call({
    Object? bullets = freezed,
  }) {
    return _then(BulletsEventSetAll(
      bullets == freezed
          ? _value.bullets
          : bullets // ignore: cast_nullable_to_non_nullable
              as Iterable<Bullet>,
    ));
  }
}

/// @nodoc

class _$BulletsEventSetAll implements BulletsEventSetAll {
  const _$BulletsEventSetAll(this.bullets);

  @override
  final Iterable<Bullet> bullets;

  @override
  String toString() {
    return 'BulletsEvent.setAll(bullets: $bullets)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is BulletsEventSetAll &&
            (identical(other.bullets, bullets) || const DeepCollectionEquality().equals(other.bullets, bullets)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(bullets);

  @JsonKey(ignore: true)
  @override
  $BulletsEventSetAllCopyWith<BulletsEventSetAll> get copyWith =>
      _$BulletsEventSetAllCopyWithImpl<BulletsEventSetAll>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(Iterable<Bullet> bullets) setAll,
    required TResult Function(Bullet bullet) add,
    required TResult Function(Iterable<Object> bombs) removeAll,
    required TResult Function(double delta) update,
  }) {
    return setAll(bullets);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(Iterable<Bullet> bullets)? setAll,
    TResult Function(Bullet bullet)? add,
    TResult Function(Iterable<Object> bombs)? removeAll,
    TResult Function(double delta)? update,
  }) {
    return setAll?.call(bullets);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(Iterable<Bullet> bullets)? setAll,
    TResult Function(Bullet bullet)? add,
    TResult Function(Iterable<Object> bombs)? removeAll,
    TResult Function(double delta)? update,
    required TResult orElse(),
  }) {
    if (setAll != null) {
      return setAll(bullets);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BulletsEventInit value) init,
    required TResult Function(BulletsEventSetAll value) setAll,
    required TResult Function(BulletsEventAdd value) add,
    required TResult Function(BulletsEventRemoveAll value) removeAll,
    required TResult Function(BulletsEventUpdate value) update,
  }) {
    return setAll(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(BulletsEventInit value)? init,
    TResult Function(BulletsEventSetAll value)? setAll,
    TResult Function(BulletsEventAdd value)? add,
    TResult Function(BulletsEventRemoveAll value)? removeAll,
    TResult Function(BulletsEventUpdate value)? update,
  }) {
    return setAll?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BulletsEventInit value)? init,
    TResult Function(BulletsEventSetAll value)? setAll,
    TResult Function(BulletsEventAdd value)? add,
    TResult Function(BulletsEventRemoveAll value)? removeAll,
    TResult Function(BulletsEventUpdate value)? update,
    required TResult orElse(),
  }) {
    if (setAll != null) {
      return setAll(this);
    }
    return orElse();
  }
}

abstract class BulletsEventSetAll implements BulletsEvent {
  const factory BulletsEventSetAll(Iterable<Bullet> bullets) = _$BulletsEventSetAll;

  Iterable<Bullet> get bullets => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BulletsEventSetAllCopyWith<BulletsEventSetAll> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BulletsEventAddCopyWith<$Res> {
  factory $BulletsEventAddCopyWith(BulletsEventAdd value, $Res Function(BulletsEventAdd) then) =
      _$BulletsEventAddCopyWithImpl<$Res>;
  $Res call({Bullet bullet});
}

/// @nodoc
class _$BulletsEventAddCopyWithImpl<$Res> extends _$BulletsEventCopyWithImpl<$Res>
    implements $BulletsEventAddCopyWith<$Res> {
  _$BulletsEventAddCopyWithImpl(BulletsEventAdd _value, $Res Function(BulletsEventAdd) _then)
      : super(_value, (v) => _then(v as BulletsEventAdd));

  @override
  BulletsEventAdd get _value => super._value as BulletsEventAdd;

  @override
  $Res call({
    Object? bullet = freezed,
  }) {
    return _then(BulletsEventAdd(
      bullet == freezed
          ? _value.bullet
          : bullet // ignore: cast_nullable_to_non_nullable
              as Bullet,
    ));
  }
}

/// @nodoc

class _$BulletsEventAdd implements BulletsEventAdd {
  const _$BulletsEventAdd(this.bullet);

  @override
  final Bullet bullet;

  @override
  String toString() {
    return 'BulletsEvent.add(bullet: $bullet)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is BulletsEventAdd &&
            (identical(other.bullet, bullet) || const DeepCollectionEquality().equals(other.bullet, bullet)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(bullet);

  @JsonKey(ignore: true)
  @override
  $BulletsEventAddCopyWith<BulletsEventAdd> get copyWith =>
      _$BulletsEventAddCopyWithImpl<BulletsEventAdd>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(Iterable<Bullet> bullets) setAll,
    required TResult Function(Bullet bullet) add,
    required TResult Function(Iterable<Object> bombs) removeAll,
    required TResult Function(double delta) update,
  }) {
    return add(bullet);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(Iterable<Bullet> bullets)? setAll,
    TResult Function(Bullet bullet)? add,
    TResult Function(Iterable<Object> bombs)? removeAll,
    TResult Function(double delta)? update,
  }) {
    return add?.call(bullet);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(Iterable<Bullet> bullets)? setAll,
    TResult Function(Bullet bullet)? add,
    TResult Function(Iterable<Object> bombs)? removeAll,
    TResult Function(double delta)? update,
    required TResult orElse(),
  }) {
    if (add != null) {
      return add(bullet);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BulletsEventInit value) init,
    required TResult Function(BulletsEventSetAll value) setAll,
    required TResult Function(BulletsEventAdd value) add,
    required TResult Function(BulletsEventRemoveAll value) removeAll,
    required TResult Function(BulletsEventUpdate value) update,
  }) {
    return add(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(BulletsEventInit value)? init,
    TResult Function(BulletsEventSetAll value)? setAll,
    TResult Function(BulletsEventAdd value)? add,
    TResult Function(BulletsEventRemoveAll value)? removeAll,
    TResult Function(BulletsEventUpdate value)? update,
  }) {
    return add?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BulletsEventInit value)? init,
    TResult Function(BulletsEventSetAll value)? setAll,
    TResult Function(BulletsEventAdd value)? add,
    TResult Function(BulletsEventRemoveAll value)? removeAll,
    TResult Function(BulletsEventUpdate value)? update,
    required TResult orElse(),
  }) {
    if (add != null) {
      return add(this);
    }
    return orElse();
  }
}

abstract class BulletsEventAdd implements BulletsEvent {
  const factory BulletsEventAdd(Bullet bullet) = _$BulletsEventAdd;

  Bullet get bullet => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BulletsEventAddCopyWith<BulletsEventAdd> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BulletsEventRemoveAllCopyWith<$Res> {
  factory $BulletsEventRemoveAllCopyWith(BulletsEventRemoveAll value, $Res Function(BulletsEventRemoveAll) then) =
      _$BulletsEventRemoveAllCopyWithImpl<$Res>;
  $Res call({Iterable<Object> bombs});
}

/// @nodoc
class _$BulletsEventRemoveAllCopyWithImpl<$Res> extends _$BulletsEventCopyWithImpl<$Res>
    implements $BulletsEventRemoveAllCopyWith<$Res> {
  _$BulletsEventRemoveAllCopyWithImpl(BulletsEventRemoveAll _value, $Res Function(BulletsEventRemoveAll) _then)
      : super(_value, (v) => _then(v as BulletsEventRemoveAll));

  @override
  BulletsEventRemoveAll get _value => super._value as BulletsEventRemoveAll;

  @override
  $Res call({
    Object? bombs = freezed,
  }) {
    return _then(BulletsEventRemoveAll(
      bombs == freezed
          ? _value.bombs
          : bombs // ignore: cast_nullable_to_non_nullable
              as Iterable<Object>,
    ));
  }
}

/// @nodoc

class _$BulletsEventRemoveAll implements BulletsEventRemoveAll {
  const _$BulletsEventRemoveAll(this.bombs);

  @override
  final Iterable<Object> bombs;

  @override
  String toString() {
    return 'BulletsEvent.removeAll(bombs: $bombs)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is BulletsEventRemoveAll &&
            (identical(other.bombs, bombs) || const DeepCollectionEquality().equals(other.bombs, bombs)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(bombs);

  @JsonKey(ignore: true)
  @override
  $BulletsEventRemoveAllCopyWith<BulletsEventRemoveAll> get copyWith =>
      _$BulletsEventRemoveAllCopyWithImpl<BulletsEventRemoveAll>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(Iterable<Bullet> bullets) setAll,
    required TResult Function(Bullet bullet) add,
    required TResult Function(Iterable<Object> bombs) removeAll,
    required TResult Function(double delta) update,
  }) {
    return removeAll(bombs);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(Iterable<Bullet> bullets)? setAll,
    TResult Function(Bullet bullet)? add,
    TResult Function(Iterable<Object> bombs)? removeAll,
    TResult Function(double delta)? update,
  }) {
    return removeAll?.call(bombs);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(Iterable<Bullet> bullets)? setAll,
    TResult Function(Bullet bullet)? add,
    TResult Function(Iterable<Object> bombs)? removeAll,
    TResult Function(double delta)? update,
    required TResult orElse(),
  }) {
    if (removeAll != null) {
      return removeAll(bombs);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BulletsEventInit value) init,
    required TResult Function(BulletsEventSetAll value) setAll,
    required TResult Function(BulletsEventAdd value) add,
    required TResult Function(BulletsEventRemoveAll value) removeAll,
    required TResult Function(BulletsEventUpdate value) update,
  }) {
    return removeAll(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(BulletsEventInit value)? init,
    TResult Function(BulletsEventSetAll value)? setAll,
    TResult Function(BulletsEventAdd value)? add,
    TResult Function(BulletsEventRemoveAll value)? removeAll,
    TResult Function(BulletsEventUpdate value)? update,
  }) {
    return removeAll?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BulletsEventInit value)? init,
    TResult Function(BulletsEventSetAll value)? setAll,
    TResult Function(BulletsEventAdd value)? add,
    TResult Function(BulletsEventRemoveAll value)? removeAll,
    TResult Function(BulletsEventUpdate value)? update,
    required TResult orElse(),
  }) {
    if (removeAll != null) {
      return removeAll(this);
    }
    return orElse();
  }
}

abstract class BulletsEventRemoveAll implements BulletsEvent {
  const factory BulletsEventRemoveAll(Iterable<Object> bombs) = _$BulletsEventRemoveAll;

  Iterable<Object> get bombs => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BulletsEventRemoveAllCopyWith<BulletsEventRemoveAll> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BulletsEventUpdateCopyWith<$Res> {
  factory $BulletsEventUpdateCopyWith(BulletsEventUpdate value, $Res Function(BulletsEventUpdate) then) =
      _$BulletsEventUpdateCopyWithImpl<$Res>;
  $Res call({double delta});
}

/// @nodoc
class _$BulletsEventUpdateCopyWithImpl<$Res> extends _$BulletsEventCopyWithImpl<$Res>
    implements $BulletsEventUpdateCopyWith<$Res> {
  _$BulletsEventUpdateCopyWithImpl(BulletsEventUpdate _value, $Res Function(BulletsEventUpdate) _then)
      : super(_value, (v) => _then(v as BulletsEventUpdate));

  @override
  BulletsEventUpdate get _value => super._value as BulletsEventUpdate;

  @override
  $Res call({
    Object? delta = freezed,
  }) {
    return _then(BulletsEventUpdate(
      delta == freezed
          ? _value.delta
          : delta // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$BulletsEventUpdate implements BulletsEventUpdate {
  const _$BulletsEventUpdate(this.delta);

  @override
  final double delta;

  @override
  String toString() {
    return 'BulletsEvent.update(delta: $delta)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is BulletsEventUpdate &&
            (identical(other.delta, delta) || const DeepCollectionEquality().equals(other.delta, delta)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(delta);

  @JsonKey(ignore: true)
  @override
  $BulletsEventUpdateCopyWith<BulletsEventUpdate> get copyWith =>
      _$BulletsEventUpdateCopyWithImpl<BulletsEventUpdate>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(Iterable<Bullet> bullets) setAll,
    required TResult Function(Bullet bullet) add,
    required TResult Function(Iterable<Object> bombs) removeAll,
    required TResult Function(double delta) update,
  }) {
    return update(delta);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(Iterable<Bullet> bullets)? setAll,
    TResult Function(Bullet bullet)? add,
    TResult Function(Iterable<Object> bombs)? removeAll,
    TResult Function(double delta)? update,
  }) {
    return update?.call(delta);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(Iterable<Bullet> bullets)? setAll,
    TResult Function(Bullet bullet)? add,
    TResult Function(Iterable<Object> bombs)? removeAll,
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
    required TResult Function(BulletsEventInit value) init,
    required TResult Function(BulletsEventSetAll value) setAll,
    required TResult Function(BulletsEventAdd value) add,
    required TResult Function(BulletsEventRemoveAll value) removeAll,
    required TResult Function(BulletsEventUpdate value) update,
  }) {
    return update(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(BulletsEventInit value)? init,
    TResult Function(BulletsEventSetAll value)? setAll,
    TResult Function(BulletsEventAdd value)? add,
    TResult Function(BulletsEventRemoveAll value)? removeAll,
    TResult Function(BulletsEventUpdate value)? update,
  }) {
    return update?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BulletsEventInit value)? init,
    TResult Function(BulletsEventSetAll value)? setAll,
    TResult Function(BulletsEventAdd value)? add,
    TResult Function(BulletsEventRemoveAll value)? removeAll,
    TResult Function(BulletsEventUpdate value)? update,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(this);
    }
    return orElse();
  }
}

abstract class BulletsEventUpdate implements BulletsEvent {
  const factory BulletsEventUpdate(double delta) = _$BulletsEventUpdate;

  double get delta => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BulletsEventUpdateCopyWith<BulletsEventUpdate> get copyWith => throw _privateConstructorUsedError;
}
