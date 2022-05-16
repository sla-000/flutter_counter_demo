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
class _$WavesEventTearOff {
  const _$WavesEventTearOff();

  WavesEventInit init() {
    return const WavesEventInit();
  }

  WavesEventNextWave nextWave() {
    return const WavesEventNextWave();
  }

  WavesEventUpdate update(int delta) {
    return WavesEventUpdate(
      delta,
    );
  }
}

/// @nodoc
const $WavesEvent = _$WavesEventTearOff();

/// @nodoc
mixin _$WavesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() nextWave,
    required TResult Function(int delta) update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? nextWave,
    TResult Function(int delta)? update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? nextWave,
    TResult Function(int delta)? update,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WavesEventInit value) init,
    required TResult Function(WavesEventNextWave value) nextWave,
    required TResult Function(WavesEventUpdate value) update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(WavesEventInit value)? init,
    TResult Function(WavesEventNextWave value)? nextWave,
    TResult Function(WavesEventUpdate value)? update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WavesEventInit value)? init,
    TResult Function(WavesEventNextWave value)? nextWave,
    TResult Function(WavesEventUpdate value)? update,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WavesEventCopyWith<$Res> {
  factory $WavesEventCopyWith(WavesEvent value, $Res Function(WavesEvent) then) = _$WavesEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$WavesEventCopyWithImpl<$Res> implements $WavesEventCopyWith<$Res> {
  _$WavesEventCopyWithImpl(this._value, this._then);

  final WavesEvent _value;
  // ignore: unused_field
  final $Res Function(WavesEvent) _then;
}

/// @nodoc
abstract class $WavesEventInitCopyWith<$Res> {
  factory $WavesEventInitCopyWith(WavesEventInit value, $Res Function(WavesEventInit) then) =
      _$WavesEventInitCopyWithImpl<$Res>;
}

/// @nodoc
class _$WavesEventInitCopyWithImpl<$Res> extends _$WavesEventCopyWithImpl<$Res>
    implements $WavesEventInitCopyWith<$Res> {
  _$WavesEventInitCopyWithImpl(WavesEventInit _value, $Res Function(WavesEventInit) _then)
      : super(_value, (v) => _then(v as WavesEventInit));

  @override
  WavesEventInit get _value => super._value as WavesEventInit;
}

/// @nodoc

class _$WavesEventInit implements WavesEventInit {
  const _$WavesEventInit();

  @override
  String toString() {
    return 'WavesEvent.init()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other.runtimeType == runtimeType && other is WavesEventInit);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() nextWave,
    required TResult Function(int delta) update,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? nextWave,
    TResult Function(int delta)? update,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? nextWave,
    TResult Function(int delta)? update,
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
    required TResult Function(WavesEventInit value) init,
    required TResult Function(WavesEventNextWave value) nextWave,
    required TResult Function(WavesEventUpdate value) update,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(WavesEventInit value)? init,
    TResult Function(WavesEventNextWave value)? nextWave,
    TResult Function(WavesEventUpdate value)? update,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WavesEventInit value)? init,
    TResult Function(WavesEventNextWave value)? nextWave,
    TResult Function(WavesEventUpdate value)? update,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class WavesEventInit implements WavesEvent {
  const factory WavesEventInit() = _$WavesEventInit;
}

/// @nodoc
abstract class $WavesEventNextWaveCopyWith<$Res> {
  factory $WavesEventNextWaveCopyWith(WavesEventNextWave value, $Res Function(WavesEventNextWave) then) =
      _$WavesEventNextWaveCopyWithImpl<$Res>;
}

/// @nodoc
class _$WavesEventNextWaveCopyWithImpl<$Res> extends _$WavesEventCopyWithImpl<$Res>
    implements $WavesEventNextWaveCopyWith<$Res> {
  _$WavesEventNextWaveCopyWithImpl(WavesEventNextWave _value, $Res Function(WavesEventNextWave) _then)
      : super(_value, (v) => _then(v as WavesEventNextWave));

  @override
  WavesEventNextWave get _value => super._value as WavesEventNextWave;
}

/// @nodoc

class _$WavesEventNextWave implements WavesEventNextWave {
  const _$WavesEventNextWave();

  @override
  String toString() {
    return 'WavesEvent.nextWave()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other.runtimeType == runtimeType && other is WavesEventNextWave);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() nextWave,
    required TResult Function(int delta) update,
  }) {
    return nextWave();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? nextWave,
    TResult Function(int delta)? update,
  }) {
    return nextWave?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? nextWave,
    TResult Function(int delta)? update,
    required TResult orElse(),
  }) {
    if (nextWave != null) {
      return nextWave();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WavesEventInit value) init,
    required TResult Function(WavesEventNextWave value) nextWave,
    required TResult Function(WavesEventUpdate value) update,
  }) {
    return nextWave(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(WavesEventInit value)? init,
    TResult Function(WavesEventNextWave value)? nextWave,
    TResult Function(WavesEventUpdate value)? update,
  }) {
    return nextWave?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WavesEventInit value)? init,
    TResult Function(WavesEventNextWave value)? nextWave,
    TResult Function(WavesEventUpdate value)? update,
    required TResult orElse(),
  }) {
    if (nextWave != null) {
      return nextWave(this);
    }
    return orElse();
  }
}

abstract class WavesEventNextWave implements WavesEvent {
  const factory WavesEventNextWave() = _$WavesEventNextWave;
}

/// @nodoc
abstract class $WavesEventUpdateCopyWith<$Res> {
  factory $WavesEventUpdateCopyWith(WavesEventUpdate value, $Res Function(WavesEventUpdate) then) =
      _$WavesEventUpdateCopyWithImpl<$Res>;
  $Res call({int delta});
}

/// @nodoc
class _$WavesEventUpdateCopyWithImpl<$Res> extends _$WavesEventCopyWithImpl<$Res>
    implements $WavesEventUpdateCopyWith<$Res> {
  _$WavesEventUpdateCopyWithImpl(WavesEventUpdate _value, $Res Function(WavesEventUpdate) _then)
      : super(_value, (v) => _then(v as WavesEventUpdate));

  @override
  WavesEventUpdate get _value => super._value as WavesEventUpdate;

  @override
  $Res call({
    Object? delta = freezed,
  }) {
    return _then(WavesEventUpdate(
      delta == freezed
          ? _value.delta
          : delta // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$WavesEventUpdate implements WavesEventUpdate {
  const _$WavesEventUpdate(this.delta);

  @override
  final int delta;

  @override
  String toString() {
    return 'WavesEvent.update(delta: $delta)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is WavesEventUpdate &&
            const DeepCollectionEquality().equals(other.delta, delta));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(delta));

  @JsonKey(ignore: true)
  @override
  $WavesEventUpdateCopyWith<WavesEventUpdate> get copyWith =>
      _$WavesEventUpdateCopyWithImpl<WavesEventUpdate>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() nextWave,
    required TResult Function(int delta) update,
  }) {
    return update(delta);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? nextWave,
    TResult Function(int delta)? update,
  }) {
    return update?.call(delta);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? nextWave,
    TResult Function(int delta)? update,
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
    required TResult Function(WavesEventInit value) init,
    required TResult Function(WavesEventNextWave value) nextWave,
    required TResult Function(WavesEventUpdate value) update,
  }) {
    return update(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(WavesEventInit value)? init,
    TResult Function(WavesEventNextWave value)? nextWave,
    TResult Function(WavesEventUpdate value)? update,
  }) {
    return update?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WavesEventInit value)? init,
    TResult Function(WavesEventNextWave value)? nextWave,
    TResult Function(WavesEventUpdate value)? update,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(this);
    }
    return orElse();
  }
}

abstract class WavesEventUpdate implements WavesEvent {
  const factory WavesEventUpdate(int delta) = _$WavesEventUpdate;

  int get delta;
  @JsonKey(ignore: true)
  $WavesEventUpdateCopyWith<WavesEventUpdate> get copyWith => throw _privateConstructorUsedError;
}
