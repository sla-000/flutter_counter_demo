// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProtagonistState {
  Protagonist get protagonist => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProtagonistStateCopyWith<ProtagonistState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProtagonistStateCopyWith<$Res> {
  factory $ProtagonistStateCopyWith(
          ProtagonistState value, $Res Function(ProtagonistState) then) =
      _$ProtagonistStateCopyWithImpl<$Res, ProtagonistState>;
  @useResult
  $Res call({Protagonist protagonist});
}

/// @nodoc
class _$ProtagonistStateCopyWithImpl<$Res, $Val extends ProtagonistState>
    implements $ProtagonistStateCopyWith<$Res> {
  _$ProtagonistStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? protagonist = null,
  }) {
    return _then(_value.copyWith(
      protagonist: null == protagonist
          ? _value.protagonist
          : protagonist // ignore: cast_nullable_to_non_nullable
              as Protagonist,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProtagonistStateCopyWith<$Res>
    implements $ProtagonistStateCopyWith<$Res> {
  factory _$$_ProtagonistStateCopyWith(
          _$_ProtagonistState value, $Res Function(_$_ProtagonistState) then) =
      __$$_ProtagonistStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Protagonist protagonist});
}

/// @nodoc
class __$$_ProtagonistStateCopyWithImpl<$Res>
    extends _$ProtagonistStateCopyWithImpl<$Res, _$_ProtagonistState>
    implements _$$_ProtagonistStateCopyWith<$Res> {
  __$$_ProtagonistStateCopyWithImpl(
      _$_ProtagonistState _value, $Res Function(_$_ProtagonistState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? protagonist = null,
  }) {
    return _then(_$_ProtagonistState(
      protagonist: null == protagonist
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
            other is _$_ProtagonistState &&
            (identical(other.protagonist, protagonist) ||
                other.protagonist == protagonist));
  }

  @override
  int get hashCode => Object.hash(runtimeType, protagonist);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProtagonistStateCopyWith<_$_ProtagonistState> get copyWith =>
      __$$_ProtagonistStateCopyWithImpl<_$_ProtagonistState>(this, _$identity);
}

abstract class _ProtagonistState implements ProtagonistState {
  const factory _ProtagonistState({required final Protagonist protagonist}) =
      _$_ProtagonistState;

  @override
  Protagonist get protagonist;
  @override
  @JsonKey(ignore: true)
  _$$_ProtagonistStateCopyWith<_$_ProtagonistState> get copyWith =>
      throw _privateConstructorUsedError;
}
