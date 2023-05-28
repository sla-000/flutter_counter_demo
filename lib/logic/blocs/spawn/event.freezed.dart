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
mixin _$SpawnEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(int time) spawn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(int time)? spawn,
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
    TResult? Function(SpawnEventInit value)? init,
    TResult? Function(SpawnEventSpawn value)? spawn,
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
      _$SpawnEventCopyWithImpl<$Res, SpawnEvent>;
}

/// @nodoc
class _$SpawnEventCopyWithImpl<$Res, $Val extends SpawnEvent>
    implements $SpawnEventCopyWith<$Res> {
  _$SpawnEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SpawnEventInitCopyWith<$Res> {
  factory _$$SpawnEventInitCopyWith(
          _$SpawnEventInit value, $Res Function(_$SpawnEventInit) then) =
      __$$SpawnEventInitCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SpawnEventInitCopyWithImpl<$Res>
    extends _$SpawnEventCopyWithImpl<$Res, _$SpawnEventInit>
    implements _$$SpawnEventInitCopyWith<$Res> {
  __$$SpawnEventInitCopyWithImpl(
      _$SpawnEventInit _value, $Res Function(_$SpawnEventInit) _then)
      : super(_value, _then);
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
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SpawnEventInit);
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
    TResult? Function()? init,
    TResult? Function(int time)? spawn,
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
    TResult? Function(SpawnEventInit value)? init,
    TResult? Function(SpawnEventSpawn value)? spawn,
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
abstract class _$$SpawnEventSpawnCopyWith<$Res> {
  factory _$$SpawnEventSpawnCopyWith(
          _$SpawnEventSpawn value, $Res Function(_$SpawnEventSpawn) then) =
      __$$SpawnEventSpawnCopyWithImpl<$Res>;
  @useResult
  $Res call({int time});
}

/// @nodoc
class __$$SpawnEventSpawnCopyWithImpl<$Res>
    extends _$SpawnEventCopyWithImpl<$Res, _$SpawnEventSpawn>
    implements _$$SpawnEventSpawnCopyWith<$Res> {
  __$$SpawnEventSpawnCopyWithImpl(
      _$SpawnEventSpawn _value, $Res Function(_$SpawnEventSpawn) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = null,
  }) {
    return _then(_$SpawnEventSpawn(
      null == time
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
        (other.runtimeType == runtimeType &&
            other is _$SpawnEventSpawn &&
            (identical(other.time, time) || other.time == time));
  }

  @override
  int get hashCode => Object.hash(runtimeType, time);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SpawnEventSpawnCopyWith<_$SpawnEventSpawn> get copyWith =>
      __$$SpawnEventSpawnCopyWithImpl<_$SpawnEventSpawn>(this, _$identity);

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
    TResult? Function()? init,
    TResult? Function(int time)? spawn,
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
    TResult? Function(SpawnEventInit value)? init,
    TResult? Function(SpawnEventSpawn value)? spawn,
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
  const factory SpawnEventSpawn(final int time) = _$SpawnEventSpawn;

  int get time;
  @JsonKey(ignore: true)
  _$$SpawnEventSpawnCopyWith<_$SpawnEventSpawn> get copyWith =>
      throw _privateConstructorUsedError;
}
