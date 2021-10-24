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
class _$SpawnEventTearOff {
  const _$SpawnEventTearOff();

  SpawnEventInit init() {
    return const SpawnEventInit();
  }

  SpawnEventSpawn spawn(int time) {
    return SpawnEventSpawn(
      time,
    );
  }
}

/// @nodoc
const $SpawnEvent = _$SpawnEventTearOff();

/// @nodoc
mixin _$SpawnEvent {
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
    required TResult Function(SpawnEventInit value) init,
    required TResult Function(SpawnEventSpawn value) spawn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SpawnEventInit value)? init,
    TResult Function(SpawnEventSpawn value)? spawn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SpawnEventInit value)? init,
    TResult Function(SpawnEventSpawn value)? spawn,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpawnEventCopyWith<$Res> {
  factory $SpawnEventCopyWith(
          SpawnEvent value, $Res Function(SpawnEvent) then) =
      _$SpawnEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SpawnEventCopyWithImpl<$Res> implements $SpawnEventCopyWith<$Res> {
  _$SpawnEventCopyWithImpl(this._value, this._then);

  final SpawnEvent _value;
  // ignore: unused_field
  final $Res Function(SpawnEvent) _then;
}

/// @nodoc
abstract class $SpawnEventInitCopyWith<$Res> {
  factory $SpawnEventInitCopyWith(
          SpawnEventInit value, $Res Function(SpawnEventInit) then) =
      _$SpawnEventInitCopyWithImpl<$Res>;
}

/// @nodoc
class _$SpawnEventInitCopyWithImpl<$Res> extends _$SpawnEventCopyWithImpl<$Res>
    implements $SpawnEventInitCopyWith<$Res> {
  _$SpawnEventInitCopyWithImpl(
      SpawnEventInit _value, $Res Function(SpawnEventInit) _then)
      : super(_value, (v) => _then(v as SpawnEventInit));

  @override
  SpawnEventInit get _value => super._value as SpawnEventInit;
}

/// @nodoc

class _$SpawnEventInit implements SpawnEventInit {
  const _$SpawnEventInit();

  @override
  String toString() {
    return 'SpawnEvent.init()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SpawnEventInit);
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
    required TResult Function(SpawnEventInit value) init,
    required TResult Function(SpawnEventSpawn value) spawn,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SpawnEventInit value)? init,
    TResult Function(SpawnEventSpawn value)? spawn,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SpawnEventInit value)? init,
    TResult Function(SpawnEventSpawn value)? spawn,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class SpawnEventInit implements SpawnEvent {
  const factory SpawnEventInit() = _$SpawnEventInit;
}

/// @nodoc
abstract class $SpawnEventSpawnCopyWith<$Res> {
  factory $SpawnEventSpawnCopyWith(
          SpawnEventSpawn value, $Res Function(SpawnEventSpawn) then) =
      _$SpawnEventSpawnCopyWithImpl<$Res>;
  $Res call({int time});
}

/// @nodoc
class _$SpawnEventSpawnCopyWithImpl<$Res> extends _$SpawnEventCopyWithImpl<$Res>
    implements $SpawnEventSpawnCopyWith<$Res> {
  _$SpawnEventSpawnCopyWithImpl(
      SpawnEventSpawn _value, $Res Function(SpawnEventSpawn) _then)
      : super(_value, (v) => _then(v as SpawnEventSpawn));

  @override
  SpawnEventSpawn get _value => super._value as SpawnEventSpawn;

  @override
  $Res call({
    Object? time = freezed,
  }) {
    return _then(SpawnEventSpawn(
      time == freezed
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$SpawnEventSpawn implements SpawnEventSpawn {
  const _$SpawnEventSpawn(this.time);

  @override
  final int time;

  @override
  String toString() {
    return 'SpawnEvent.spawn(time: $time)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SpawnEventSpawn &&
            (identical(other.time, time) ||
                const DeepCollectionEquality().equals(other.time, time)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(time);

  @JsonKey(ignore: true)
  @override
  $SpawnEventSpawnCopyWith<SpawnEventSpawn> get copyWith =>
      _$SpawnEventSpawnCopyWithImpl<SpawnEventSpawn>(this, _$identity);

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
    required TResult Function(SpawnEventInit value) init,
    required TResult Function(SpawnEventSpawn value) spawn,
  }) {
    return spawn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SpawnEventInit value)? init,
    TResult Function(SpawnEventSpawn value)? spawn,
  }) {
    return spawn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SpawnEventInit value)? init,
    TResult Function(SpawnEventSpawn value)? spawn,
    required TResult orElse(),
  }) {
    if (spawn != null) {
      return spawn(this);
    }
    return orElse();
  }
}

abstract class SpawnEventSpawn implements SpawnEvent {
  const factory SpawnEventSpawn(int time) = _$SpawnEventSpawn;

  int get time => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SpawnEventSpawnCopyWith<SpawnEventSpawn> get copyWith =>
      throw _privateConstructorUsedError;
}
