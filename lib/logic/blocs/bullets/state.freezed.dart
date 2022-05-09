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
class _$BulletsStateTearOff {
  const _$BulletsStateTearOff();

  _BulletsState call({List<Bullet> bullets = const <Bullet>[]}) {
    return _BulletsState(
      bullets: bullets,
    );
  }
}

/// @nodoc
const $BulletsState = _$BulletsStateTearOff();

/// @nodoc
mixin _$BulletsState {
  List<Bullet> get bullets => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BulletsStateCopyWith<BulletsState> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BulletsStateCopyWith<$Res> {
  factory $BulletsStateCopyWith(BulletsState value, $Res Function(BulletsState) then) =
      _$BulletsStateCopyWithImpl<$Res>;
  $Res call({List<Bullet> bullets});
}

/// @nodoc
class _$BulletsStateCopyWithImpl<$Res> implements $BulletsStateCopyWith<$Res> {
  _$BulletsStateCopyWithImpl(this._value, this._then);

  final BulletsState _value;
  // ignore: unused_field
  final $Res Function(BulletsState) _then;

  @override
  $Res call({
    Object? bullets = freezed,
  }) {
    return _then(_value.copyWith(
      bullets: bullets == freezed
          ? _value.bullets
          : bullets // ignore: cast_nullable_to_non_nullable
              as List<Bullet>,
    ));
  }
}

/// @nodoc
abstract class _$BulletsStateCopyWith<$Res> implements $BulletsStateCopyWith<$Res> {
  factory _$BulletsStateCopyWith(_BulletsState value, $Res Function(_BulletsState) then) =
      __$BulletsStateCopyWithImpl<$Res>;
  @override
  $Res call({List<Bullet> bullets});
}

/// @nodoc
class __$BulletsStateCopyWithImpl<$Res> extends _$BulletsStateCopyWithImpl<$Res>
    implements _$BulletsStateCopyWith<$Res> {
  __$BulletsStateCopyWithImpl(_BulletsState _value, $Res Function(_BulletsState) _then)
      : super(_value, (v) => _then(v as _BulletsState));

  @override
  _BulletsState get _value => super._value as _BulletsState;

  @override
  $Res call({
    Object? bullets = freezed,
  }) {
    return _then(_BulletsState(
      bullets: bullets == freezed
          ? _value.bullets
          : bullets // ignore: cast_nullable_to_non_nullable
              as List<Bullet>,
    ));
  }
}

/// @nodoc

class _$_BulletsState implements _BulletsState {
  const _$_BulletsState({this.bullets = const <Bullet>[]});

  @JsonKey(defaultValue: const <Bullet>[])
  @override
  final List<Bullet> bullets;

  @override
  String toString() {
    return 'BulletsState(bullets: $bullets)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BulletsState &&
            (identical(other.bullets, bullets) || const DeepCollectionEquality().equals(other.bullets, bullets)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(bullets);

  @JsonKey(ignore: true)
  @override
  _$BulletsStateCopyWith<_BulletsState> get copyWith => __$BulletsStateCopyWithImpl<_BulletsState>(this, _$identity);
}

abstract class _BulletsState implements BulletsState {
  const factory _BulletsState({List<Bullet> bullets}) = _$_BulletsState;

  @override
  List<Bullet> get bullets => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$BulletsStateCopyWith<_BulletsState> get copyWith => throw _privateConstructorUsedError;
}
