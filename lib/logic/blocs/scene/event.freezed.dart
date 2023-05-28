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
    TResult? Function(Vector size)? init,
    TResult? Function(Vector size)? resize,
    TResult? Function()? tapButton,
    TResult? Function(double delta)? update,
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
    TResult? Function(SceneEventInit value)? init,
    TResult? Function(SceneEventResize value)? resize,
    TResult? Function(SceneEventTapButton value)? tapButton,
    TResult? Function(SceneEventUpdate value)? update,
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
      _$SceneEventCopyWithImpl<$Res, SceneEvent>;
}

/// @nodoc
class _$SceneEventCopyWithImpl<$Res, $Val extends SceneEvent>
    implements $SceneEventCopyWith<$Res> {
  _$SceneEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SceneEventInitCopyWith<$Res> {
  factory _$$SceneEventInitCopyWith(
          _$SceneEventInit value, $Res Function(_$SceneEventInit) then) =
      __$$SceneEventInitCopyWithImpl<$Res>;
  @useResult
  $Res call({Vector size});
}

/// @nodoc
class __$$SceneEventInitCopyWithImpl<$Res>
    extends _$SceneEventCopyWithImpl<$Res, _$SceneEventInit>
    implements _$$SceneEventInitCopyWith<$Res> {
  __$$SceneEventInitCopyWithImpl(
      _$SceneEventInit _value, $Res Function(_$SceneEventInit) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? size = null,
  }) {
    return _then(_$SceneEventInit(
      null == size
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
        (other.runtimeType == runtimeType &&
            other is _$SceneEventInit &&
            (identical(other.size, size) || other.size == size));
  }

  @override
  int get hashCode => Object.hash(runtimeType, size);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SceneEventInitCopyWith<_$SceneEventInit> get copyWith =>
      __$$SceneEventInitCopyWithImpl<_$SceneEventInit>(this, _$identity);

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
    TResult? Function(Vector size)? init,
    TResult? Function(Vector size)? resize,
    TResult? Function()? tapButton,
    TResult? Function(double delta)? update,
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
    TResult? Function(SceneEventInit value)? init,
    TResult? Function(SceneEventResize value)? resize,
    TResult? Function(SceneEventTapButton value)? tapButton,
    TResult? Function(SceneEventUpdate value)? update,
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
  const factory SceneEventInit(final Vector size) = _$SceneEventInit;

  Vector get size;
  @JsonKey(ignore: true)
  _$$SceneEventInitCopyWith<_$SceneEventInit> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SceneEventResizeCopyWith<$Res> {
  factory _$$SceneEventResizeCopyWith(
          _$SceneEventResize value, $Res Function(_$SceneEventResize) then) =
      __$$SceneEventResizeCopyWithImpl<$Res>;
  @useResult
  $Res call({Vector size});
}

/// @nodoc
class __$$SceneEventResizeCopyWithImpl<$Res>
    extends _$SceneEventCopyWithImpl<$Res, _$SceneEventResize>
    implements _$$SceneEventResizeCopyWith<$Res> {
  __$$SceneEventResizeCopyWithImpl(
      _$SceneEventResize _value, $Res Function(_$SceneEventResize) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? size = null,
  }) {
    return _then(_$SceneEventResize(
      null == size
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
        (other.runtimeType == runtimeType &&
            other is _$SceneEventResize &&
            (identical(other.size, size) || other.size == size));
  }

  @override
  int get hashCode => Object.hash(runtimeType, size);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SceneEventResizeCopyWith<_$SceneEventResize> get copyWith =>
      __$$SceneEventResizeCopyWithImpl<_$SceneEventResize>(this, _$identity);

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
    TResult? Function(Vector size)? init,
    TResult? Function(Vector size)? resize,
    TResult? Function()? tapButton,
    TResult? Function(double delta)? update,
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
    TResult? Function(SceneEventInit value)? init,
    TResult? Function(SceneEventResize value)? resize,
    TResult? Function(SceneEventTapButton value)? tapButton,
    TResult? Function(SceneEventUpdate value)? update,
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
  const factory SceneEventResize(final Vector size) = _$SceneEventResize;

  Vector get size;
  @JsonKey(ignore: true)
  _$$SceneEventResizeCopyWith<_$SceneEventResize> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SceneEventTapButtonCopyWith<$Res> {
  factory _$$SceneEventTapButtonCopyWith(_$SceneEventTapButton value,
          $Res Function(_$SceneEventTapButton) then) =
      __$$SceneEventTapButtonCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SceneEventTapButtonCopyWithImpl<$Res>
    extends _$SceneEventCopyWithImpl<$Res, _$SceneEventTapButton>
    implements _$$SceneEventTapButtonCopyWith<$Res> {
  __$$SceneEventTapButtonCopyWithImpl(
      _$SceneEventTapButton _value, $Res Function(_$SceneEventTapButton) _then)
      : super(_value, _then);
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
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SceneEventTapButton);
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
    TResult? Function(Vector size)? init,
    TResult? Function(Vector size)? resize,
    TResult? Function()? tapButton,
    TResult? Function(double delta)? update,
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
    TResult? Function(SceneEventInit value)? init,
    TResult? Function(SceneEventResize value)? resize,
    TResult? Function(SceneEventTapButton value)? tapButton,
    TResult? Function(SceneEventUpdate value)? update,
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
abstract class _$$SceneEventUpdateCopyWith<$Res> {
  factory _$$SceneEventUpdateCopyWith(
          _$SceneEventUpdate value, $Res Function(_$SceneEventUpdate) then) =
      __$$SceneEventUpdateCopyWithImpl<$Res>;
  @useResult
  $Res call({double delta});
}

/// @nodoc
class __$$SceneEventUpdateCopyWithImpl<$Res>
    extends _$SceneEventCopyWithImpl<$Res, _$SceneEventUpdate>
    implements _$$SceneEventUpdateCopyWith<$Res> {
  __$$SceneEventUpdateCopyWithImpl(
      _$SceneEventUpdate _value, $Res Function(_$SceneEventUpdate) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? delta = null,
  }) {
    return _then(_$SceneEventUpdate(
      null == delta
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
        (other.runtimeType == runtimeType &&
            other is _$SceneEventUpdate &&
            (identical(other.delta, delta) || other.delta == delta));
  }

  @override
  int get hashCode => Object.hash(runtimeType, delta);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SceneEventUpdateCopyWith<_$SceneEventUpdate> get copyWith =>
      __$$SceneEventUpdateCopyWithImpl<_$SceneEventUpdate>(this, _$identity);

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
    TResult? Function(Vector size)? init,
    TResult? Function(Vector size)? resize,
    TResult? Function()? tapButton,
    TResult? Function(double delta)? update,
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
    TResult? Function(SceneEventInit value)? init,
    TResult? Function(SceneEventResize value)? resize,
    TResult? Function(SceneEventTapButton value)? tapButton,
    TResult? Function(SceneEventUpdate value)? update,
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
  const factory SceneEventUpdate(final double delta) = _$SceneEventUpdate;

  double get delta;
  @JsonKey(ignore: true)
  _$$SceneEventUpdateCopyWith<_$SceneEventUpdate> get copyWith =>
      throw _privateConstructorUsedError;
}
