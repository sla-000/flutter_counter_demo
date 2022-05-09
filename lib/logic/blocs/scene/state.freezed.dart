// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SceneStateTearOff {
  const _$SceneStateTearOff();

  _SceneState call(
      {required Vector size,
      required Protagonist protagonist,
      required List<Bullet> bullets,
      required List<Bomb> bombs}) {
    return _SceneState(
      size: size,
      protagonist: protagonist,
      bullets: bullets,
      bombs: bombs,
    );
  }
}

/// @nodoc
const $SceneState = _$SceneStateTearOff();

/// @nodoc
mixin _$SceneState {
  Vector get size => throw _privateConstructorUsedError;
  Protagonist get protagonist => throw _privateConstructorUsedError;
  List<Bullet> get bullets => throw _privateConstructorUsedError;
  List<Bomb> get bombs => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SceneStateCopyWith<SceneState> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SceneStateCopyWith<$Res> {
  factory $SceneStateCopyWith(SceneState value, $Res Function(SceneState) then) = _$SceneStateCopyWithImpl<$Res>;
  $Res call({Vector size, Protagonist protagonist, List<Bullet> bullets, List<Bomb> bombs});
}

/// @nodoc
class _$SceneStateCopyWithImpl<$Res> implements $SceneStateCopyWith<$Res> {
  _$SceneStateCopyWithImpl(this._value, this._then);

  final SceneState _value;
  // ignore: unused_field
  final $Res Function(SceneState) _then;

  @override
  $Res call({
    Object? size = freezed,
    Object? protagonist = freezed,
    Object? bullets = freezed,
    Object? bombs = freezed,
  }) {
    return _then(_value.copyWith(
      size: size == freezed
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as Vector,
      protagonist: protagonist == freezed
          ? _value.protagonist
          : protagonist // ignore: cast_nullable_to_non_nullable
              as Protagonist,
      bullets: bullets == freezed
          ? _value.bullets
          : bullets // ignore: cast_nullable_to_non_nullable
              as List<Bullet>,
      bombs: bombs == freezed
          ? _value.bombs
          : bombs // ignore: cast_nullable_to_non_nullable
              as List<Bomb>,
    ));
  }
}

/// @nodoc
abstract class _$SceneStateCopyWith<$Res> implements $SceneStateCopyWith<$Res> {
  factory _$SceneStateCopyWith(_SceneState value, $Res Function(_SceneState) then) = __$SceneStateCopyWithImpl<$Res>;
  @override
  $Res call({Vector size, Protagonist protagonist, List<Bullet> bullets, List<Bomb> bombs});
}

/// @nodoc
class __$SceneStateCopyWithImpl<$Res> extends _$SceneStateCopyWithImpl<$Res> implements _$SceneStateCopyWith<$Res> {
  __$SceneStateCopyWithImpl(_SceneState _value, $Res Function(_SceneState) _then)
      : super(_value, (v) => _then(v as _SceneState));

  @override
  _SceneState get _value => super._value as _SceneState;

  @override
  $Res call({
    Object? size = freezed,
    Object? protagonist = freezed,
    Object? bullets = freezed,
    Object? bombs = freezed,
  }) {
    return _then(_SceneState(
      size: size == freezed
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as Vector,
      protagonist: protagonist == freezed
          ? _value.protagonist
          : protagonist // ignore: cast_nullable_to_non_nullable
              as Protagonist,
      bullets: bullets == freezed
          ? _value.bullets
          : bullets // ignore: cast_nullable_to_non_nullable
              as List<Bullet>,
      bombs: bombs == freezed
          ? _value.bombs
          : bombs // ignore: cast_nullable_to_non_nullable
              as List<Bomb>,
    ));
  }
}

/// @nodoc

class _$_SceneState implements _SceneState {
  const _$_SceneState({required this.size, required this.protagonist, required this.bullets, required this.bombs});

  @override
  final Vector size;
  @override
  final Protagonist protagonist;
  @override
  final List<Bullet> bullets;
  @override
  final List<Bomb> bombs;

  @override
  String toString() {
    return 'SceneState(size: $size, protagonist: $protagonist, bullets: $bullets, bombs: $bombs)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SceneState &&
            (identical(other.size, size) || const DeepCollectionEquality().equals(other.size, size)) &&
            (identical(other.protagonist, protagonist) ||
                const DeepCollectionEquality().equals(other.protagonist, protagonist)) &&
            (identical(other.bullets, bullets) || const DeepCollectionEquality().equals(other.bullets, bullets)) &&
            (identical(other.bombs, bombs) || const DeepCollectionEquality().equals(other.bombs, bombs)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(size) ^
      const DeepCollectionEquality().hash(protagonist) ^
      const DeepCollectionEquality().hash(bullets) ^
      const DeepCollectionEquality().hash(bombs);

  @JsonKey(ignore: true)
  @override
  _$SceneStateCopyWith<_SceneState> get copyWith => __$SceneStateCopyWithImpl<_SceneState>(this, _$identity);
}

abstract class _SceneState implements SceneState {
  const factory _SceneState(
      {required Vector size,
      required Protagonist protagonist,
      required List<Bullet> bullets,
      required List<Bomb> bombs}) = _$_SceneState;

  @override
  Vector get size => throw _privateConstructorUsedError;
  @override
  Protagonist get protagonist => throw _privateConstructorUsedError;
  @override
  List<Bullet> get bullets => throw _privateConstructorUsedError;
  @override
  List<Bomb> get bombs => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SceneStateCopyWith<_SceneState> get copyWith => throw _privateConstructorUsedError;
}
