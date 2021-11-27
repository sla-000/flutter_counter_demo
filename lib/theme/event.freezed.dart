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
class _$ThemeEventTearOff {
  const _$ThemeEventTearOff();

  ThemeEventGameOn gameOn(BuildContext context) {
    return ThemeEventGameOn(
      context,
    );
  }

  ThemeEventGameOff gameOff(BuildContext context) {
    return ThemeEventGameOff(
      context,
    );
  }
}

/// @nodoc
const $ThemeEvent = _$ThemeEventTearOff();

/// @nodoc
mixin _$ThemeEvent {
  BuildContext get context => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context) gameOn,
    required TResult Function(BuildContext context) gameOff,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(BuildContext context)? gameOn,
    TResult Function(BuildContext context)? gameOff,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context)? gameOn,
    TResult Function(BuildContext context)? gameOff,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ThemeEventGameOn value) gameOn,
    required TResult Function(ThemeEventGameOff value) gameOff,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ThemeEventGameOn value)? gameOn,
    TResult Function(ThemeEventGameOff value)? gameOff,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ThemeEventGameOn value)? gameOn,
    TResult Function(ThemeEventGameOff value)? gameOff,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ThemeEventCopyWith<ThemeEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ThemeEventCopyWith<$Res> {
  factory $ThemeEventCopyWith(
          ThemeEvent value, $Res Function(ThemeEvent) then) =
      _$ThemeEventCopyWithImpl<$Res>;
  $Res call({BuildContext context});
}

/// @nodoc
class _$ThemeEventCopyWithImpl<$Res> implements $ThemeEventCopyWith<$Res> {
  _$ThemeEventCopyWithImpl(this._value, this._then);

  final ThemeEvent _value;
  // ignore: unused_field
  final $Res Function(ThemeEvent) _then;

  @override
  $Res call({
    Object? context = freezed,
  }) {
    return _then(_value.copyWith(
      context: context == freezed
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc
abstract class $ThemeEventGameOnCopyWith<$Res>
    implements $ThemeEventCopyWith<$Res> {
  factory $ThemeEventGameOnCopyWith(
          ThemeEventGameOn value, $Res Function(ThemeEventGameOn) then) =
      _$ThemeEventGameOnCopyWithImpl<$Res>;
  @override
  $Res call({BuildContext context});
}

/// @nodoc
class _$ThemeEventGameOnCopyWithImpl<$Res>
    extends _$ThemeEventCopyWithImpl<$Res>
    implements $ThemeEventGameOnCopyWith<$Res> {
  _$ThemeEventGameOnCopyWithImpl(
      ThemeEventGameOn _value, $Res Function(ThemeEventGameOn) _then)
      : super(_value, (v) => _then(v as ThemeEventGameOn));

  @override
  ThemeEventGameOn get _value => super._value as ThemeEventGameOn;

  @override
  $Res call({
    Object? context = freezed,
  }) {
    return _then(ThemeEventGameOn(
      context == freezed
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$ThemeEventGameOn implements ThemeEventGameOn {
  const _$ThemeEventGameOn(this.context);

  @override
  final BuildContext context;

  @override
  String toString() {
    return 'ThemeEvent.gameOn(context: $context)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ThemeEventGameOn &&
            (identical(other.context, context) ||
                const DeepCollectionEquality().equals(other.context, context)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(context);

  @JsonKey(ignore: true)
  @override
  $ThemeEventGameOnCopyWith<ThemeEventGameOn> get copyWith =>
      _$ThemeEventGameOnCopyWithImpl<ThemeEventGameOn>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context) gameOn,
    required TResult Function(BuildContext context) gameOff,
  }) {
    return gameOn(context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(BuildContext context)? gameOn,
    TResult Function(BuildContext context)? gameOff,
  }) {
    return gameOn?.call(context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context)? gameOn,
    TResult Function(BuildContext context)? gameOff,
    required TResult orElse(),
  }) {
    if (gameOn != null) {
      return gameOn(context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ThemeEventGameOn value) gameOn,
    required TResult Function(ThemeEventGameOff value) gameOff,
  }) {
    return gameOn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ThemeEventGameOn value)? gameOn,
    TResult Function(ThemeEventGameOff value)? gameOff,
  }) {
    return gameOn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ThemeEventGameOn value)? gameOn,
    TResult Function(ThemeEventGameOff value)? gameOff,
    required TResult orElse(),
  }) {
    if (gameOn != null) {
      return gameOn(this);
    }
    return orElse();
  }
}

abstract class ThemeEventGameOn implements ThemeEvent {
  const factory ThemeEventGameOn(BuildContext context) = _$ThemeEventGameOn;

  @override
  BuildContext get context => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $ThemeEventGameOnCopyWith<ThemeEventGameOn> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ThemeEventGameOffCopyWith<$Res>
    implements $ThemeEventCopyWith<$Res> {
  factory $ThemeEventGameOffCopyWith(
          ThemeEventGameOff value, $Res Function(ThemeEventGameOff) then) =
      _$ThemeEventGameOffCopyWithImpl<$Res>;
  @override
  $Res call({BuildContext context});
}

/// @nodoc
class _$ThemeEventGameOffCopyWithImpl<$Res>
    extends _$ThemeEventCopyWithImpl<$Res>
    implements $ThemeEventGameOffCopyWith<$Res> {
  _$ThemeEventGameOffCopyWithImpl(
      ThemeEventGameOff _value, $Res Function(ThemeEventGameOff) _then)
      : super(_value, (v) => _then(v as ThemeEventGameOff));

  @override
  ThemeEventGameOff get _value => super._value as ThemeEventGameOff;

  @override
  $Res call({
    Object? context = freezed,
  }) {
    return _then(ThemeEventGameOff(
      context == freezed
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$ThemeEventGameOff implements ThemeEventGameOff {
  const _$ThemeEventGameOff(this.context);

  @override
  final BuildContext context;

  @override
  String toString() {
    return 'ThemeEvent.gameOff(context: $context)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ThemeEventGameOff &&
            (identical(other.context, context) ||
                const DeepCollectionEquality().equals(other.context, context)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(context);

  @JsonKey(ignore: true)
  @override
  $ThemeEventGameOffCopyWith<ThemeEventGameOff> get copyWith =>
      _$ThemeEventGameOffCopyWithImpl<ThemeEventGameOff>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context) gameOn,
    required TResult Function(BuildContext context) gameOff,
  }) {
    return gameOff(context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(BuildContext context)? gameOn,
    TResult Function(BuildContext context)? gameOff,
  }) {
    return gameOff?.call(context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context)? gameOn,
    TResult Function(BuildContext context)? gameOff,
    required TResult orElse(),
  }) {
    if (gameOff != null) {
      return gameOff(context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ThemeEventGameOn value) gameOn,
    required TResult Function(ThemeEventGameOff value) gameOff,
  }) {
    return gameOff(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ThemeEventGameOn value)? gameOn,
    TResult Function(ThemeEventGameOff value)? gameOff,
  }) {
    return gameOff?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ThemeEventGameOn value)? gameOn,
    TResult Function(ThemeEventGameOff value)? gameOff,
    required TResult orElse(),
  }) {
    if (gameOff != null) {
      return gameOff(this);
    }
    return orElse();
  }
}

abstract class ThemeEventGameOff implements ThemeEvent {
  const factory ThemeEventGameOff(BuildContext context) = _$ThemeEventGameOff;

  @override
  BuildContext get context => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $ThemeEventGameOffCopyWith<ThemeEventGameOff> get copyWith =>
      throw _privateConstructorUsedError;
}
