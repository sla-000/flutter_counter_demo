// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'repo.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$WavesModelTearOff {
  const _$WavesModelTearOff();

  _WavesModel call({int delta = 0}) {
    return _WavesModel(
      delta: delta,
    );
  }
}

/// @nodoc
const $WavesModel = _$WavesModelTearOff();

/// @nodoc
mixin _$WavesModel {
  int get delta => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WavesModelCopyWith<WavesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WavesModelCopyWith<$Res> {
  factory $WavesModelCopyWith(
          WavesModel value, $Res Function(WavesModel) then) =
      _$WavesModelCopyWithImpl<$Res>;
  $Res call({int delta});
}

/// @nodoc
class _$WavesModelCopyWithImpl<$Res> implements $WavesModelCopyWith<$Res> {
  _$WavesModelCopyWithImpl(this._value, this._then);

  final WavesModel _value;
  // ignore: unused_field
  final $Res Function(WavesModel) _then;

  @override
  $Res call({
    Object? delta = freezed,
  }) {
    return _then(_value.copyWith(
      delta: delta == freezed
          ? _value.delta
          : delta // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$WavesModelCopyWith<$Res> implements $WavesModelCopyWith<$Res> {
  factory _$WavesModelCopyWith(
          _WavesModel value, $Res Function(_WavesModel) then) =
      __$WavesModelCopyWithImpl<$Res>;
  @override
  $Res call({int delta});
}

/// @nodoc
class __$WavesModelCopyWithImpl<$Res> extends _$WavesModelCopyWithImpl<$Res>
    implements _$WavesModelCopyWith<$Res> {
  __$WavesModelCopyWithImpl(
      _WavesModel _value, $Res Function(_WavesModel) _then)
      : super(_value, (v) => _then(v as _WavesModel));

  @override
  _WavesModel get _value => super._value as _WavesModel;

  @override
  $Res call({
    Object? delta = freezed,
  }) {
    return _then(_WavesModel(
      delta: delta == freezed
          ? _value.delta
          : delta // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_WavesModel implements _WavesModel {
  const _$_WavesModel({this.delta = 0});

  @JsonKey(defaultValue: 0)
  @override
  final int delta;

  @override
  String toString() {
    return 'WavesModel(delta: $delta)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _WavesModel &&
            (identical(other.delta, delta) ||
                const DeepCollectionEquality().equals(other.delta, delta)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(delta);

  @JsonKey(ignore: true)
  @override
  _$WavesModelCopyWith<_WavesModel> get copyWith =>
      __$WavesModelCopyWithImpl<_WavesModel>(this, _$identity);
}

abstract class _WavesModel implements WavesModel {
  const factory _WavesModel({int delta}) = _$_WavesModel;

  @override
  int get delta => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$WavesModelCopyWith<_WavesModel> get copyWith =>
      throw _privateConstructorUsedError;
}
