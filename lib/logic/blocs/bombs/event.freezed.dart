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
class _$BombsEventTearOff {
  const _$BombsEventTearOff();

  BombsEventInit init() {
    return const BombsEventInit();
  }

  BombsEventSetAll setAll(Iterable<Bomb> bombs) {
    return BombsEventSetAll(
      bombs,
    );
  }

  BombsEventAdd add(Bomb bomb) {
    return BombsEventAdd(
      bomb,
    );
  }

  BombsEventRemoveAll removeAll(Iterable<Object> bombs) {
    return BombsEventRemoveAll(
      bombs,
    );
  }

  BombsEventUpdate update(double delta) {
    return BombsEventUpdate(
      delta,
    );
  }
}

/// @nodoc
const $BombsEvent = _$BombsEventTearOff();

/// @nodoc
mixin _$BombsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(Iterable<Bomb> bombs) setAll,
    required TResult Function(Bomb bomb) add,
    required TResult Function(Iterable<Object> bombs) removeAll,
    required TResult Function(double delta) update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(Iterable<Bomb> bombs)? setAll,
    TResult Function(Bomb bomb)? add,
    TResult Function(Iterable<Object> bombs)? removeAll,
    TResult Function(double delta)? update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(Iterable<Bomb> bombs)? setAll,
    TResult Function(Bomb bomb)? add,
    TResult Function(Iterable<Object> bombs)? removeAll,
    TResult Function(double delta)? update,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BombsEventInit value) init,
    required TResult Function(BombsEventSetAll value) setAll,
    required TResult Function(BombsEventAdd value) add,
    required TResult Function(BombsEventRemoveAll value) removeAll,
    required TResult Function(BombsEventUpdate value) update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(BombsEventInit value)? init,
    TResult Function(BombsEventSetAll value)? setAll,
    TResult Function(BombsEventAdd value)? add,
    TResult Function(BombsEventRemoveAll value)? removeAll,
    TResult Function(BombsEventUpdate value)? update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BombsEventInit value)? init,
    TResult Function(BombsEventSetAll value)? setAll,
    TResult Function(BombsEventAdd value)? add,
    TResult Function(BombsEventRemoveAll value)? removeAll,
    TResult Function(BombsEventUpdate value)? update,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BombsEventCopyWith<$Res> {
  factory $BombsEventCopyWith(BombsEvent value, $Res Function(BombsEvent) then) = _$BombsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$BombsEventCopyWithImpl<$Res> implements $BombsEventCopyWith<$Res> {
  _$BombsEventCopyWithImpl(this._value, this._then);

  final BombsEvent _value;
  // ignore: unused_field
  final $Res Function(BombsEvent) _then;
}

/// @nodoc
abstract class $BombsEventInitCopyWith<$Res> {
  factory $BombsEventInitCopyWith(BombsEventInit value, $Res Function(BombsEventInit) then) =
      _$BombsEventInitCopyWithImpl<$Res>;
}

/// @nodoc
class _$BombsEventInitCopyWithImpl<$Res> extends _$BombsEventCopyWithImpl<$Res>
    implements $BombsEventInitCopyWith<$Res> {
  _$BombsEventInitCopyWithImpl(BombsEventInit _value, $Res Function(BombsEventInit) _then)
      : super(_value, (v) => _then(v as BombsEventInit));

  @override
  BombsEventInit get _value => super._value as BombsEventInit;
}

/// @nodoc

class _$BombsEventInit implements BombsEventInit {
  const _$BombsEventInit();

  @override
  String toString() {
    return 'BombsEvent.init()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other.runtimeType == runtimeType && other is BombsEventInit);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(Iterable<Bomb> bombs) setAll,
    required TResult Function(Bomb bomb) add,
    required TResult Function(Iterable<Object> bombs) removeAll,
    required TResult Function(double delta) update,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(Iterable<Bomb> bombs)? setAll,
    TResult Function(Bomb bomb)? add,
    TResult Function(Iterable<Object> bombs)? removeAll,
    TResult Function(double delta)? update,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(Iterable<Bomb> bombs)? setAll,
    TResult Function(Bomb bomb)? add,
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
    required TResult Function(BombsEventInit value) init,
    required TResult Function(BombsEventSetAll value) setAll,
    required TResult Function(BombsEventAdd value) add,
    required TResult Function(BombsEventRemoveAll value) removeAll,
    required TResult Function(BombsEventUpdate value) update,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(BombsEventInit value)? init,
    TResult Function(BombsEventSetAll value)? setAll,
    TResult Function(BombsEventAdd value)? add,
    TResult Function(BombsEventRemoveAll value)? removeAll,
    TResult Function(BombsEventUpdate value)? update,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BombsEventInit value)? init,
    TResult Function(BombsEventSetAll value)? setAll,
    TResult Function(BombsEventAdd value)? add,
    TResult Function(BombsEventRemoveAll value)? removeAll,
    TResult Function(BombsEventUpdate value)? update,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class BombsEventInit implements BombsEvent {
  const factory BombsEventInit() = _$BombsEventInit;
}

/// @nodoc
abstract class $BombsEventSetAllCopyWith<$Res> {
  factory $BombsEventSetAllCopyWith(BombsEventSetAll value, $Res Function(BombsEventSetAll) then) =
      _$BombsEventSetAllCopyWithImpl<$Res>;
  $Res call({Iterable<Bomb> bombs});
}

/// @nodoc
class _$BombsEventSetAllCopyWithImpl<$Res> extends _$BombsEventCopyWithImpl<$Res>
    implements $BombsEventSetAllCopyWith<$Res> {
  _$BombsEventSetAllCopyWithImpl(BombsEventSetAll _value, $Res Function(BombsEventSetAll) _then)
      : super(_value, (v) => _then(v as BombsEventSetAll));

  @override
  BombsEventSetAll get _value => super._value as BombsEventSetAll;

  @override
  $Res call({
    Object? bombs = freezed,
  }) {
    return _then(BombsEventSetAll(
      bombs == freezed
          ? _value.bombs
          : bombs // ignore: cast_nullable_to_non_nullable
              as Iterable<Bomb>,
    ));
  }
}

/// @nodoc

class _$BombsEventSetAll implements BombsEventSetAll {
  const _$BombsEventSetAll(this.bombs);

  @override
  final Iterable<Bomb> bombs;

  @override
  String toString() {
    return 'BombsEvent.setAll(bombs: $bombs)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BombsEventSetAll &&
            const DeepCollectionEquality().equals(other.bombs, bombs));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(bombs));

  @JsonKey(ignore: true)
  @override
  $BombsEventSetAllCopyWith<BombsEventSetAll> get copyWith =>
      _$BombsEventSetAllCopyWithImpl<BombsEventSetAll>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(Iterable<Bomb> bombs) setAll,
    required TResult Function(Bomb bomb) add,
    required TResult Function(Iterable<Object> bombs) removeAll,
    required TResult Function(double delta) update,
  }) {
    return setAll(bombs);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(Iterable<Bomb> bombs)? setAll,
    TResult Function(Bomb bomb)? add,
    TResult Function(Iterable<Object> bombs)? removeAll,
    TResult Function(double delta)? update,
  }) {
    return setAll?.call(bombs);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(Iterable<Bomb> bombs)? setAll,
    TResult Function(Bomb bomb)? add,
    TResult Function(Iterable<Object> bombs)? removeAll,
    TResult Function(double delta)? update,
    required TResult orElse(),
  }) {
    if (setAll != null) {
      return setAll(bombs);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BombsEventInit value) init,
    required TResult Function(BombsEventSetAll value) setAll,
    required TResult Function(BombsEventAdd value) add,
    required TResult Function(BombsEventRemoveAll value) removeAll,
    required TResult Function(BombsEventUpdate value) update,
  }) {
    return setAll(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(BombsEventInit value)? init,
    TResult Function(BombsEventSetAll value)? setAll,
    TResult Function(BombsEventAdd value)? add,
    TResult Function(BombsEventRemoveAll value)? removeAll,
    TResult Function(BombsEventUpdate value)? update,
  }) {
    return setAll?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BombsEventInit value)? init,
    TResult Function(BombsEventSetAll value)? setAll,
    TResult Function(BombsEventAdd value)? add,
    TResult Function(BombsEventRemoveAll value)? removeAll,
    TResult Function(BombsEventUpdate value)? update,
    required TResult orElse(),
  }) {
    if (setAll != null) {
      return setAll(this);
    }
    return orElse();
  }
}

abstract class BombsEventSetAll implements BombsEvent {
  const factory BombsEventSetAll(Iterable<Bomb> bombs) = _$BombsEventSetAll;

  Iterable<Bomb> get bombs;
  @JsonKey(ignore: true)
  $BombsEventSetAllCopyWith<BombsEventSetAll> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BombsEventAddCopyWith<$Res> {
  factory $BombsEventAddCopyWith(BombsEventAdd value, $Res Function(BombsEventAdd) then) =
      _$BombsEventAddCopyWithImpl<$Res>;
  $Res call({Bomb bomb});
}

/// @nodoc
class _$BombsEventAddCopyWithImpl<$Res> extends _$BombsEventCopyWithImpl<$Res> implements $BombsEventAddCopyWith<$Res> {
  _$BombsEventAddCopyWithImpl(BombsEventAdd _value, $Res Function(BombsEventAdd) _then)
      : super(_value, (v) => _then(v as BombsEventAdd));

  @override
  BombsEventAdd get _value => super._value as BombsEventAdd;

  @override
  $Res call({
    Object? bomb = freezed,
  }) {
    return _then(BombsEventAdd(
      bomb == freezed
          ? _value.bomb
          : bomb // ignore: cast_nullable_to_non_nullable
              as Bomb,
    ));
  }
}

/// @nodoc

class _$BombsEventAdd implements BombsEventAdd {
  const _$BombsEventAdd(this.bomb);

  @override
  final Bomb bomb;

  @override
  String toString() {
    return 'BombsEvent.add(bomb: $bomb)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BombsEventAdd &&
            const DeepCollectionEquality().equals(other.bomb, bomb));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(bomb));

  @JsonKey(ignore: true)
  @override
  $BombsEventAddCopyWith<BombsEventAdd> get copyWith => _$BombsEventAddCopyWithImpl<BombsEventAdd>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(Iterable<Bomb> bombs) setAll,
    required TResult Function(Bomb bomb) add,
    required TResult Function(Iterable<Object> bombs) removeAll,
    required TResult Function(double delta) update,
  }) {
    return add(bomb);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(Iterable<Bomb> bombs)? setAll,
    TResult Function(Bomb bomb)? add,
    TResult Function(Iterable<Object> bombs)? removeAll,
    TResult Function(double delta)? update,
  }) {
    return add?.call(bomb);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(Iterable<Bomb> bombs)? setAll,
    TResult Function(Bomb bomb)? add,
    TResult Function(Iterable<Object> bombs)? removeAll,
    TResult Function(double delta)? update,
    required TResult orElse(),
  }) {
    if (add != null) {
      return add(bomb);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BombsEventInit value) init,
    required TResult Function(BombsEventSetAll value) setAll,
    required TResult Function(BombsEventAdd value) add,
    required TResult Function(BombsEventRemoveAll value) removeAll,
    required TResult Function(BombsEventUpdate value) update,
  }) {
    return add(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(BombsEventInit value)? init,
    TResult Function(BombsEventSetAll value)? setAll,
    TResult Function(BombsEventAdd value)? add,
    TResult Function(BombsEventRemoveAll value)? removeAll,
    TResult Function(BombsEventUpdate value)? update,
  }) {
    return add?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BombsEventInit value)? init,
    TResult Function(BombsEventSetAll value)? setAll,
    TResult Function(BombsEventAdd value)? add,
    TResult Function(BombsEventRemoveAll value)? removeAll,
    TResult Function(BombsEventUpdate value)? update,
    required TResult orElse(),
  }) {
    if (add != null) {
      return add(this);
    }
    return orElse();
  }
}

abstract class BombsEventAdd implements BombsEvent {
  const factory BombsEventAdd(Bomb bomb) = _$BombsEventAdd;

  Bomb get bomb;
  @JsonKey(ignore: true)
  $BombsEventAddCopyWith<BombsEventAdd> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BombsEventRemoveAllCopyWith<$Res> {
  factory $BombsEventRemoveAllCopyWith(BombsEventRemoveAll value, $Res Function(BombsEventRemoveAll) then) =
      _$BombsEventRemoveAllCopyWithImpl<$Res>;
  $Res call({Iterable<Object> bombs});
}

/// @nodoc
class _$BombsEventRemoveAllCopyWithImpl<$Res> extends _$BombsEventCopyWithImpl<$Res>
    implements $BombsEventRemoveAllCopyWith<$Res> {
  _$BombsEventRemoveAllCopyWithImpl(BombsEventRemoveAll _value, $Res Function(BombsEventRemoveAll) _then)
      : super(_value, (v) => _then(v as BombsEventRemoveAll));

  @override
  BombsEventRemoveAll get _value => super._value as BombsEventRemoveAll;

  @override
  $Res call({
    Object? bombs = freezed,
  }) {
    return _then(BombsEventRemoveAll(
      bombs == freezed
          ? _value.bombs
          : bombs // ignore: cast_nullable_to_non_nullable
              as Iterable<Object>,
    ));
  }
}

/// @nodoc

class _$BombsEventRemoveAll implements BombsEventRemoveAll {
  const _$BombsEventRemoveAll(this.bombs);

  @override
  final Iterable<Object> bombs;

  @override
  String toString() {
    return 'BombsEvent.removeAll(bombs: $bombs)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BombsEventRemoveAll &&
            const DeepCollectionEquality().equals(other.bombs, bombs));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(bombs));

  @JsonKey(ignore: true)
  @override
  $BombsEventRemoveAllCopyWith<BombsEventRemoveAll> get copyWith =>
      _$BombsEventRemoveAllCopyWithImpl<BombsEventRemoveAll>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(Iterable<Bomb> bombs) setAll,
    required TResult Function(Bomb bomb) add,
    required TResult Function(Iterable<Object> bombs) removeAll,
    required TResult Function(double delta) update,
  }) {
    return removeAll(bombs);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(Iterable<Bomb> bombs)? setAll,
    TResult Function(Bomb bomb)? add,
    TResult Function(Iterable<Object> bombs)? removeAll,
    TResult Function(double delta)? update,
  }) {
    return removeAll?.call(bombs);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(Iterable<Bomb> bombs)? setAll,
    TResult Function(Bomb bomb)? add,
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
    required TResult Function(BombsEventInit value) init,
    required TResult Function(BombsEventSetAll value) setAll,
    required TResult Function(BombsEventAdd value) add,
    required TResult Function(BombsEventRemoveAll value) removeAll,
    required TResult Function(BombsEventUpdate value) update,
  }) {
    return removeAll(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(BombsEventInit value)? init,
    TResult Function(BombsEventSetAll value)? setAll,
    TResult Function(BombsEventAdd value)? add,
    TResult Function(BombsEventRemoveAll value)? removeAll,
    TResult Function(BombsEventUpdate value)? update,
  }) {
    return removeAll?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BombsEventInit value)? init,
    TResult Function(BombsEventSetAll value)? setAll,
    TResult Function(BombsEventAdd value)? add,
    TResult Function(BombsEventRemoveAll value)? removeAll,
    TResult Function(BombsEventUpdate value)? update,
    required TResult orElse(),
  }) {
    if (removeAll != null) {
      return removeAll(this);
    }
    return orElse();
  }
}

abstract class BombsEventRemoveAll implements BombsEvent {
  const factory BombsEventRemoveAll(Iterable<Object> bombs) = _$BombsEventRemoveAll;

  Iterable<Object> get bombs;
  @JsonKey(ignore: true)
  $BombsEventRemoveAllCopyWith<BombsEventRemoveAll> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BombsEventUpdateCopyWith<$Res> {
  factory $BombsEventUpdateCopyWith(BombsEventUpdate value, $Res Function(BombsEventUpdate) then) =
      _$BombsEventUpdateCopyWithImpl<$Res>;
  $Res call({double delta});
}

/// @nodoc
class _$BombsEventUpdateCopyWithImpl<$Res> extends _$BombsEventCopyWithImpl<$Res>
    implements $BombsEventUpdateCopyWith<$Res> {
  _$BombsEventUpdateCopyWithImpl(BombsEventUpdate _value, $Res Function(BombsEventUpdate) _then)
      : super(_value, (v) => _then(v as BombsEventUpdate));

  @override
  BombsEventUpdate get _value => super._value as BombsEventUpdate;

  @override
  $Res call({
    Object? delta = freezed,
  }) {
    return _then(BombsEventUpdate(
      delta == freezed
          ? _value.delta
          : delta // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$BombsEventUpdate implements BombsEventUpdate {
  const _$BombsEventUpdate(this.delta);

  @override
  final double delta;

  @override
  String toString() {
    return 'BombsEvent.update(delta: $delta)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BombsEventUpdate &&
            const DeepCollectionEquality().equals(other.delta, delta));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(delta));

  @JsonKey(ignore: true)
  @override
  $BombsEventUpdateCopyWith<BombsEventUpdate> get copyWith =>
      _$BombsEventUpdateCopyWithImpl<BombsEventUpdate>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(Iterable<Bomb> bombs) setAll,
    required TResult Function(Bomb bomb) add,
    required TResult Function(Iterable<Object> bombs) removeAll,
    required TResult Function(double delta) update,
  }) {
    return update(delta);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(Iterable<Bomb> bombs)? setAll,
    TResult Function(Bomb bomb)? add,
    TResult Function(Iterable<Object> bombs)? removeAll,
    TResult Function(double delta)? update,
  }) {
    return update?.call(delta);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(Iterable<Bomb> bombs)? setAll,
    TResult Function(Bomb bomb)? add,
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
    required TResult Function(BombsEventInit value) init,
    required TResult Function(BombsEventSetAll value) setAll,
    required TResult Function(BombsEventAdd value) add,
    required TResult Function(BombsEventRemoveAll value) removeAll,
    required TResult Function(BombsEventUpdate value) update,
  }) {
    return update(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(BombsEventInit value)? init,
    TResult Function(BombsEventSetAll value)? setAll,
    TResult Function(BombsEventAdd value)? add,
    TResult Function(BombsEventRemoveAll value)? removeAll,
    TResult Function(BombsEventUpdate value)? update,
  }) {
    return update?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BombsEventInit value)? init,
    TResult Function(BombsEventSetAll value)? setAll,
    TResult Function(BombsEventAdd value)? add,
    TResult Function(BombsEventRemoveAll value)? removeAll,
    TResult Function(BombsEventUpdate value)? update,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(this);
    }
    return orElse();
  }
}

abstract class BombsEventUpdate implements BombsEvent {
  const factory BombsEventUpdate(double delta) = _$BombsEventUpdate;

  double get delta;
  @JsonKey(ignore: true)
  $BombsEventUpdateCopyWith<BombsEventUpdate> get copyWith => throw _privateConstructorUsedError;
}
