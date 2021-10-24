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
class _$SceneEventTearOff {
  const _$SceneEventTearOff();

  SceneEventInit init(Vector size) {
    return SceneEventInit(
      size,
    );
  }

  SceneEventResize resize(Vector size) {
    return SceneEventResize(
      size,
    );
  }

  SceneEventTapButton tapButton() {
    return const SceneEventTapButton();
  }

  SceneEventUpdate update(double delta) {
    return SceneEventUpdate(
      delta,
    );
  }
}

/// @nodoc
const $SceneEvent = _$SceneEventTearOff();

/// @nodoc
mixin _$SceneEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Vector size) init,
    required TResult Function(Vector size) resize,
    required TResult Function() tapButton,
    required TResult Function(double delta) update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Vector size)? init,
    TResult Function(Vector size)? resize,
    TResult Function()? tapButton,
    TResult Function(double delta)? update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Vector size)? init,
    TResult Function(Vector size)? resize,
    TResult Function()? tapButton,
    TResult Function(double delta)? update,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SceneEventInit value) init,
    required TResult Function(SceneEventResize value) resize,
    required TResult Function(SceneEventTapButton value) tapButton,
    required TResult Function(SceneEventUpdate value) update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SceneEventInit value)? init,
    TResult Function(SceneEventResize value)? resize,
    TResult Function(SceneEventTapButton value)? tapButton,
    TResult Function(SceneEventUpdate value)? update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SceneEventInit value)? init,
    TResult Function(SceneEventResize value)? resize,
    TResult Function(SceneEventTapButton value)? tapButton,
    TResult Function(SceneEventUpdate value)? update,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SceneEventCopyWith<$Res> {
  factory $SceneEventCopyWith(
          SceneEvent value, $Res Function(SceneEvent) then) =
      _$SceneEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SceneEventCopyWithImpl<$Res> implements $SceneEventCopyWith<$Res> {
  _$SceneEventCopyWithImpl(this._value, this._then);

  final SceneEvent _value;
  // ignore: unused_field
  final $Res Function(SceneEvent) _then;
}

/// @nodoc
abstract class $SceneEventInitCopyWith<$Res> {
  factory $SceneEventInitCopyWith(
          SceneEventInit value, $Res Function(SceneEventInit) then) =
      _$SceneEventInitCopyWithImpl<$Res>;
  $Res call({Vector size});
}

/// @nodoc
class _$SceneEventInitCopyWithImpl<$Res> extends _$SceneEventCopyWithImpl<$Res>
    implements $SceneEventInitCopyWith<$Res> {
  _$SceneEventInitCopyWithImpl(
      SceneEventInit _value, $Res Function(SceneEventInit) _then)
      : super(_value, (v) => _then(v as SceneEventInit));

  @override
  SceneEventInit get _value => super._value as SceneEventInit;

  @override
  $Res call({
    Object? size = freezed,
  }) {
    return _then(SceneEventInit(
      size == freezed
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as Vector,
    ));
  }
}

/// @nodoc

class _$SceneEventInit implements SceneEventInit {
  const _$SceneEventInit(this.size);

  @override
  final Vector size;

  @override
  String toString() {
    return 'SceneEvent.init(size: $size)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SceneEventInit &&
            (identical(other.size, size) ||
                const DeepCollectionEquality().equals(other.size, size)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(size);

  @JsonKey(ignore: true)
  @override
  $SceneEventInitCopyWith<SceneEventInit> get copyWith =>
      _$SceneEventInitCopyWithImpl<SceneEventInit>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Vector size) init,
    required TResult Function(Vector size) resize,
    required TResult Function() tapButton,
    required TResult Function(double delta) update,
  }) {
    return init(size);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Vector size)? init,
    TResult Function(Vector size)? resize,
    TResult Function()? tapButton,
    TResult Function(double delta)? update,
  }) {
    return init?.call(size);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Vector size)? init,
    TResult Function(Vector size)? resize,
    TResult Function()? tapButton,
    TResult Function(double delta)? update,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(size);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SceneEventInit value) init,
    required TResult Function(SceneEventResize value) resize,
    required TResult Function(SceneEventTapButton value) tapButton,
    required TResult Function(SceneEventUpdate value) update,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SceneEventInit value)? init,
    TResult Function(SceneEventResize value)? resize,
    TResult Function(SceneEventTapButton value)? tapButton,
    TResult Function(SceneEventUpdate value)? update,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SceneEventInit value)? init,
    TResult Function(SceneEventResize value)? resize,
    TResult Function(SceneEventTapButton value)? tapButton,
    TResult Function(SceneEventUpdate value)? update,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class SceneEventInit implements SceneEvent {
  const factory SceneEventInit(Vector size) = _$SceneEventInit;

  Vector get size => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SceneEventInitCopyWith<SceneEventInit> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SceneEventResizeCopyWith<$Res> {
  factory $SceneEventResizeCopyWith(
          SceneEventResize value, $Res Function(SceneEventResize) then) =
      _$SceneEventResizeCopyWithImpl<$Res>;
  $Res call({Vector size});
}

/// @nodoc
class _$SceneEventResizeCopyWithImpl<$Res>
    extends _$SceneEventCopyWithImpl<$Res>
    implements $SceneEventResizeCopyWith<$Res> {
  _$SceneEventResizeCopyWithImpl(
      SceneEventResize _value, $Res Function(SceneEventResize) _then)
      : super(_value, (v) => _then(v as SceneEventResize));

  @override
  SceneEventResize get _value => super._value as SceneEventResize;

  @override
  $Res call({
    Object? size = freezed,
  }) {
    return _then(SceneEventResize(
      size == freezed
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as Vector,
    ));
  }
}

/// @nodoc

class _$SceneEventResize implements SceneEventResize {
  const _$SceneEventResize(this.size);

  @override
  final Vector size;

  @override
  String toString() {
    return 'SceneEvent.resize(size: $size)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SceneEventResize &&
            (identical(other.size, size) ||
                const DeepCollectionEquality().equals(other.size, size)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(size);

  @JsonKey(ignore: true)
  @override
  $SceneEventResizeCopyWith<SceneEventResize> get copyWith =>
      _$SceneEventResizeCopyWithImpl<SceneEventResize>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Vector size) init,
    required TResult Function(Vector size) resize,
    required TResult Function() tapButton,
    required TResult Function(double delta) update,
  }) {
    return resize(size);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Vector size)? init,
    TResult Function(Vector size)? resize,
    TResult Function()? tapButton,
    TResult Function(double delta)? update,
  }) {
    return resize?.call(size);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Vector size)? init,
    TResult Function(Vector size)? resize,
    TResult Function()? tapButton,
    TResult Function(double delta)? update,
    required TResult orElse(),
  }) {
    if (resize != null) {
      return resize(size);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SceneEventInit value) init,
    required TResult Function(SceneEventResize value) resize,
    required TResult Function(SceneEventTapButton value) tapButton,
    required TResult Function(SceneEventUpdate value) update,
  }) {
    return resize(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SceneEventInit value)? init,
    TResult Function(SceneEventResize value)? resize,
    TResult Function(SceneEventTapButton value)? tapButton,
    TResult Function(SceneEventUpdate value)? update,
  }) {
    return resize?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SceneEventInit value)? init,
    TResult Function(SceneEventResize value)? resize,
    TResult Function(SceneEventTapButton value)? tapButton,
    TResult Function(SceneEventUpdate value)? update,
    required TResult orElse(),
  }) {
    if (resize != null) {
      return resize(this);
    }
    return orElse();
  }
}

abstract class SceneEventResize implements SceneEvent {
  const factory SceneEventResize(Vector size) = _$SceneEventResize;

  Vector get size => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SceneEventResizeCopyWith<SceneEventResize> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SceneEventTapButtonCopyWith<$Res> {
  factory $SceneEventTapButtonCopyWith(
          SceneEventTapButton value, $Res Function(SceneEventTapButton) then) =
      _$SceneEventTapButtonCopyWithImpl<$Res>;
}

/// @nodoc
class _$SceneEventTapButtonCopyWithImpl<$Res>
    extends _$SceneEventCopyWithImpl<$Res>
    implements $SceneEventTapButtonCopyWith<$Res> {
  _$SceneEventTapButtonCopyWithImpl(
      SceneEventTapButton _value, $Res Function(SceneEventTapButton) _then)
      : super(_value, (v) => _then(v as SceneEventTapButton));

  @override
  SceneEventTapButton get _value => super._value as SceneEventTapButton;
}

/// @nodoc

class _$SceneEventTapButton implements SceneEventTapButton {
  const _$SceneEventTapButton();

  @override
  String toString() {
    return 'SceneEvent.tapButton()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SceneEventTapButton);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Vector size) init,
    required TResult Function(Vector size) resize,
    required TResult Function() tapButton,
    required TResult Function(double delta) update,
  }) {
    return tapButton();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Vector size)? init,
    TResult Function(Vector size)? resize,
    TResult Function()? tapButton,
    TResult Function(double delta)? update,
  }) {
    return tapButton?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Vector size)? init,
    TResult Function(Vector size)? resize,
    TResult Function()? tapButton,
    TResult Function(double delta)? update,
    required TResult orElse(),
  }) {
    if (tapButton != null) {
      return tapButton();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SceneEventInit value) init,
    required TResult Function(SceneEventResize value) resize,
    required TResult Function(SceneEventTapButton value) tapButton,
    required TResult Function(SceneEventUpdate value) update,
  }) {
    return tapButton(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SceneEventInit value)? init,
    TResult Function(SceneEventResize value)? resize,
    TResult Function(SceneEventTapButton value)? tapButton,
    TResult Function(SceneEventUpdate value)? update,
  }) {
    return tapButton?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SceneEventInit value)? init,
    TResult Function(SceneEventResize value)? resize,
    TResult Function(SceneEventTapButton value)? tapButton,
    TResult Function(SceneEventUpdate value)? update,
    required TResult orElse(),
  }) {
    if (tapButton != null) {
      return tapButton(this);
    }
    return orElse();
  }
}

abstract class SceneEventTapButton implements SceneEvent {
  const factory SceneEventTapButton() = _$SceneEventTapButton;
}

/// @nodoc
abstract class $SceneEventUpdateCopyWith<$Res> {
  factory $SceneEventUpdateCopyWith(
          SceneEventUpdate value, $Res Function(SceneEventUpdate) then) =
      _$SceneEventUpdateCopyWithImpl<$Res>;
  $Res call({double delta});
}

/// @nodoc
class _$SceneEventUpdateCopyWithImpl<$Res>
    extends _$SceneEventCopyWithImpl<$Res>
    implements $SceneEventUpdateCopyWith<$Res> {
  _$SceneEventUpdateCopyWithImpl(
      SceneEventUpdate _value, $Res Function(SceneEventUpdate) _then)
      : super(_value, (v) => _then(v as SceneEventUpdate));

  @override
  SceneEventUpdate get _value => super._value as SceneEventUpdate;

  @override
  $Res call({
    Object? delta = freezed,
  }) {
    return _then(SceneEventUpdate(
      delta == freezed
          ? _value.delta
          : delta // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$SceneEventUpdate implements SceneEventUpdate {
  const _$SceneEventUpdate(this.delta);

  @override
  final double delta;

  @override
  String toString() {
    return 'SceneEvent.update(delta: $delta)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SceneEventUpdate &&
            (identical(other.delta, delta) ||
                const DeepCollectionEquality().equals(other.delta, delta)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(delta);

  @JsonKey(ignore: true)
  @override
  $SceneEventUpdateCopyWith<SceneEventUpdate> get copyWith =>
      _$SceneEventUpdateCopyWithImpl<SceneEventUpdate>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Vector size) init,
    required TResult Function(Vector size) resize,
    required TResult Function() tapButton,
    required TResult Function(double delta) update,
  }) {
    return update(delta);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Vector size)? init,
    TResult Function(Vector size)? resize,
    TResult Function()? tapButton,
    TResult Function(double delta)? update,
  }) {
    return update?.call(delta);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Vector size)? init,
    TResult Function(Vector size)? resize,
    TResult Function()? tapButton,
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
    required TResult Function(SceneEventInit value) init,
    required TResult Function(SceneEventResize value) resize,
    required TResult Function(SceneEventTapButton value) tapButton,
    required TResult Function(SceneEventUpdate value) update,
  }) {
    return update(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SceneEventInit value)? init,
    TResult Function(SceneEventResize value)? resize,
    TResult Function(SceneEventTapButton value)? tapButton,
    TResult Function(SceneEventUpdate value)? update,
  }) {
    return update?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SceneEventInit value)? init,
    TResult Function(SceneEventResize value)? resize,
    TResult Function(SceneEventTapButton value)? tapButton,
    TResult Function(SceneEventUpdate value)? update,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(this);
    }
    return orElse();
  }
}

abstract class SceneEventUpdate implements SceneEvent {
  const factory SceneEventUpdate(double delta) = _$SceneEventUpdate;

  double get delta => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SceneEventUpdateCopyWith<SceneEventUpdate> get copyWith =>
      throw _privateConstructorUsedError;
}
