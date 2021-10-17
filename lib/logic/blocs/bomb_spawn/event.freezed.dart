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
class _$BombSpawnEventTearOff {
  const _$BombSpawnEventTearOff();

  BombSpawnEventInit init() {
    return const BombSpawnEventInit();
  }

  BombSpawnEventSpawn spawn(int time) {
    return BombSpawnEventSpawn(
      time,
    );
  }
}

/// @nodoc
const $BombSpawnEvent = _$BombSpawnEventTearOff();

/// @nodoc
mixin _$BombSpawnEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(int time) spawn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(int time)? spawn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(int time)? spawn,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BombSpawnEventInit value) init,
    required TResult Function(BombSpawnEventSpawn value) spawn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(BombSpawnEventInit value)? init,
    TResult Function(BombSpawnEventSpawn value)? spawn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BombSpawnEventInit value)? init,
    TResult Function(BombSpawnEventSpawn value)? spawn,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BombSpawnEventCopyWith<$Res> {
  factory $BombSpawnEventCopyWith(
          BombSpawnEvent value, $Res Function(BombSpawnEvent) then) =
      _$BombSpawnEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$BombSpawnEventCopyWithImpl<$Res>
    implements $BombSpawnEventCopyWith<$Res> {
  _$BombSpawnEventCopyWithImpl(this._value, this._then);

  final BombSpawnEvent _value;
  // ignore: unused_field
  final $Res Function(BombSpawnEvent) _then;
}

/// @nodoc
abstract class $BombSpawnEventInitCopyWith<$Res> {
  factory $BombSpawnEventInitCopyWith(
          BombSpawnEventInit value, $Res Function(BombSpawnEventInit) then) =
      _$BombSpawnEventInitCopyWithImpl<$Res>;
}

/// @nodoc
class _$BombSpawnEventInitCopyWithImpl<$Res>
    extends _$BombSpawnEventCopyWithImpl<$Res>
    implements $BombSpawnEventInitCopyWith<$Res> {
  _$BombSpawnEventInitCopyWithImpl(
      BombSpawnEventInit _value, $Res Function(BombSpawnEventInit) _then)
      : super(_value, (v) => _then(v as BombSpawnEventInit));

  @override
  BombSpawnEventInit get _value => super._value as BombSpawnEventInit;
}

/// @nodoc

class _$BombSpawnEventInit implements BombSpawnEventInit {
  const _$BombSpawnEventInit();

  @override
  String toString() {
    return 'BombSpawnEvent.init()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is BombSpawnEventInit);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(int time) spawn,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(int time)? spawn,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(int time)? spawn,
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
    required TResult Function(BombSpawnEventInit value) init,
    required TResult Function(BombSpawnEventSpawn value) spawn,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(BombSpawnEventInit value)? init,
    TResult Function(BombSpawnEventSpawn value)? spawn,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BombSpawnEventInit value)? init,
    TResult Function(BombSpawnEventSpawn value)? spawn,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class BombSpawnEventInit implements BombSpawnEvent {
  const factory BombSpawnEventInit() = _$BombSpawnEventInit;
}

/// @nodoc
abstract class $BombSpawnEventSpawnCopyWith<$Res> {
  factory $BombSpawnEventSpawnCopyWith(
          BombSpawnEventSpawn value, $Res Function(BombSpawnEventSpawn) then) =
      _$BombSpawnEventSpawnCopyWithImpl<$Res>;
  $Res call({int time});
}

/// @nodoc
class _$BombSpawnEventSpawnCopyWithImpl<$Res>
    extends _$BombSpawnEventCopyWithImpl<$Res>
    implements $BombSpawnEventSpawnCopyWith<$Res> {
  _$BombSpawnEventSpawnCopyWithImpl(
      BombSpawnEventSpawn _value, $Res Function(BombSpawnEventSpawn) _then)
      : super(_value, (v) => _then(v as BombSpawnEventSpawn));

  @override
  BombSpawnEventSpawn get _value => super._value as BombSpawnEventSpawn;

  @override
  $Res call({
    Object? time = freezed,
  }) {
    return _then(BombSpawnEventSpawn(
      time == freezed
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$BombSpawnEventSpawn implements BombSpawnEventSpawn {
  const _$BombSpawnEventSpawn(this.time);

  @override
  final int time;

  @override
  String toString() {
    return 'BombSpawnEvent.spawn(time: $time)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is BombSpawnEventSpawn &&
            (identical(other.time, time) ||
                const DeepCollectionEquality().equals(other.time, time)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(time);

  @JsonKey(ignore: true)
  @override
  $BombSpawnEventSpawnCopyWith<BombSpawnEventSpawn> get copyWith =>
      _$BombSpawnEventSpawnCopyWithImpl<BombSpawnEventSpawn>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(int time) spawn,
  }) {
    return spawn(time);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(int time)? spawn,
  }) {
    return spawn?.call(time);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(int time)? spawn,
    required TResult orElse(),
  }) {
    if (spawn != null) {
      return spawn(time);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BombSpawnEventInit value) init,
    required TResult Function(BombSpawnEventSpawn value) spawn,
  }) {
    return spawn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(BombSpawnEventInit value)? init,
    TResult Function(BombSpawnEventSpawn value)? spawn,
  }) {
    return spawn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BombSpawnEventInit value)? init,
    TResult Function(BombSpawnEventSpawn value)? spawn,
    required TResult orElse(),
  }) {
    if (spawn != null) {
      return spawn(this);
    }
    return orElse();
  }
}

abstract class BombSpawnEventSpawn implements BombSpawnEvent {
  const factory BombSpawnEventSpawn(int time) = _$BombSpawnEventSpawn;

  int get time => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BombSpawnEventSpawnCopyWith<BombSpawnEventSpawn> get copyWith =>
      throw _privateConstructorUsedError;
}
