// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ProtagonistStateTearOff {
  const _$ProtagonistStateTearOff();

  _ProtagonistState call({required Protagonist protagonist}) {
    return _ProtagonistState(
      protagonist: protagonist,
    );
  }
}

/// @nodoc
const $ProtagonistState = _$ProtagonistStateTearOff();

/// @nodoc
mixin _$ProtagonistState {
  Protagonist get protagonist => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProtagonistStateCopyWith<ProtagonistState> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProtagonistStateCopyWith<$Res> {
  factory $ProtagonistStateCopyWith(ProtagonistState value, $Res Function(ProtagonistState) then) =
      _$ProtagonistStateCopyWithImpl<$Res>;
  $Res call({Protagonist protagonist});
}

/// @nodoc
class _$ProtagonistStateCopyWithImpl<$Res> implements $ProtagonistStateCopyWith<$Res> {
  _$ProtagonistStateCopyWithImpl(this._value, this._then);

  final ProtagonistState _value;
  // ignore: unused_field
  final $Res Function(ProtagonistState) _then;

  @override
  $Res call({
    Object? protagonist = freezed,
  }) {
    return _then(_value.copyWith(
      protagonist: protagonist == freezed
          ? _value.protagonist
          : protagonist // ignore: cast_nullable_to_non_nullable
              as Protagonist,
    ));
  }
}

/// @nodoc
abstract class _$ProtagonistStateCopyWith<$Res> implements $ProtagonistStateCopyWith<$Res> {
  factory _$ProtagonistStateCopyWith(_ProtagonistState value, $Res Function(_ProtagonistState) then) =
      __$ProtagonistStateCopyWithImpl<$Res>;
  @override
  $Res call({Protagonist protagonist});
}

/// @nodoc
class __$ProtagonistStateCopyWithImpl<$Res> extends _$ProtagonistStateCopyWithImpl<$Res>
    implements _$ProtagonistStateCopyWith<$Res> {
  __$ProtagonistStateCopyWithImpl(_ProtagonistState _value, $Res Function(_ProtagonistState) _then)
      : super(_value, (v) => _then(v as _ProtagonistState));

  @override
  _ProtagonistState get _value => super._value as _ProtagonistState;

  @override
  $Res call({
    Object? protagonist = freezed,
  }) {
    return _then(_ProtagonistState(
      protagonist: protagonist == freezed
          ? _value.protagonist
          : protagonist // ignore: cast_nullable_to_non_nullable
              as Protagonist,
    ));
  }
}

/// @nodoc

class _$_ProtagonistState implements _ProtagonistState {
  const _$_ProtagonistState({required this.protagonist});

  @override
  final Protagonist protagonist;

  @override
  String toString() {
    return 'ProtagonistState(protagonist: $protagonist)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ProtagonistState &&
            const DeepCollectionEquality().equals(other.protagonist, protagonist));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(protagonist));

  @JsonKey(ignore: true)
  @override
  _$ProtagonistStateCopyWith<_ProtagonistState> get copyWith =>
      __$ProtagonistStateCopyWithImpl<_ProtagonistState>(this, _$identity);
}

abstract class _ProtagonistState implements ProtagonistState {
  const factory _ProtagonistState({required Protagonist protagonist}) = _$_ProtagonistState;

  @override
  Protagonist get protagonist;
  @override
  @JsonKey(ignore: true)
  _$ProtagonistStateCopyWith<_ProtagonistState> get copyWith => throw _privateConstructorUsedError;
}
