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
mixin _$SceneState {
  Vector get size => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SceneStateCopyWith<SceneState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SceneStateCopyWith<$Res> {
  factory $SceneStateCopyWith(
          SceneState value, $Res Function(SceneState) then) =
      _$SceneStateCopyWithImpl<$Res, SceneState>;
  @useResult
  $Res call({Vector size});
}

/// @nodoc
class _$SceneStateCopyWithImpl<$Res, $Val extends SceneState>
    implements $SceneStateCopyWith<$Res> {
  _$SceneStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? size = null,
  }) {
    return _then(_value.copyWith(
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as Vector,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SceneStateCopyWith<$Res>
    implements $SceneStateCopyWith<$Res> {
  factory _$$_SceneStateCopyWith(
          _$_SceneState value, $Res Function(_$_SceneState) then) =
      __$$_SceneStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Vector size});
}

/// @nodoc
class __$$_SceneStateCopyWithImpl<$Res>
    extends _$SceneStateCopyWithImpl<$Res, _$_SceneState>
    implements _$$_SceneStateCopyWith<$Res> {
  __$$_SceneStateCopyWithImpl(
      _$_SceneState _value, $Res Function(_$_SceneState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? size = null,
  }) {
    return _then(_$_SceneState(
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as Vector,
    ));
  }
}

/// @nodoc

class _$_SceneState implements _SceneState {
  const _$_SceneState({required this.size});

  @override
  final Vector size;

  @override
  String toString() {
    return 'SceneState(size: $size)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SceneState &&
            (identical(other.size, size) || other.size == size));
  }

  @override
  int get hashCode => Object.hash(runtimeType, size);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SceneStateCopyWith<_$_SceneState> get copyWith =>
      __$$_SceneStateCopyWithImpl<_$_SceneState>(this, _$identity);
}

abstract class _SceneState implements SceneState {
  const factory _SceneState({required final Vector size}) = _$_SceneState;

  @override
  Vector get size;
  @override
  @JsonKey(ignore: true)
  _$$_SceneStateCopyWith<_$_SceneState> get copyWith =>
      throw _privateConstructorUsedError;
}
