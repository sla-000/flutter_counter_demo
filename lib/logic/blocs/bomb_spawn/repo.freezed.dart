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
class _$BombSpawnModelTearOff {
  const _$BombSpawnModelTearOff();

  _BombSpawnModel call({int count = 0, int time = 0}) {
    return _BombSpawnModel(
      count: count,
      time: time,
    );
  }
}

/// @nodoc
const $BombSpawnModel = _$BombSpawnModelTearOff();

/// @nodoc
mixin _$BombSpawnModel {
  int get count => throw _privateConstructorUsedError;
  int get time => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BombSpawnModelCopyWith<BombSpawnModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BombSpawnModelCopyWith<$Res> {
  factory $BombSpawnModelCopyWith(
          BombSpawnModel value, $Res Function(BombSpawnModel) then) =
      _$BombSpawnModelCopyWithImpl<$Res>;
  $Res call({int count, int time});
}

/// @nodoc
class _$BombSpawnModelCopyWithImpl<$Res>
    implements $BombSpawnModelCopyWith<$Res> {
  _$BombSpawnModelCopyWithImpl(this._value, this._then);

  final BombSpawnModel _value;
  // ignore: unused_field
  final $Res Function(BombSpawnModel) _then;

  @override
  $Res call({
    Object? count = freezed,
    Object? time = freezed,
  }) {
    return _then(_value.copyWith(
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      time: time == freezed
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$BombSpawnModelCopyWith<$Res>
    implements $BombSpawnModelCopyWith<$Res> {
  factory _$BombSpawnModelCopyWith(
          _BombSpawnModel value, $Res Function(_BombSpawnModel) then) =
      __$BombSpawnModelCopyWithImpl<$Res>;
  @override
  $Res call({int count, int time});
}

/// @nodoc
class __$BombSpawnModelCopyWithImpl<$Res>
    extends _$BombSpawnModelCopyWithImpl<$Res>
    implements _$BombSpawnModelCopyWith<$Res> {
  __$BombSpawnModelCopyWithImpl(
      _BombSpawnModel _value, $Res Function(_BombSpawnModel) _then)
      : super(_value, (v) => _then(v as _BombSpawnModel));

  @override
  _BombSpawnModel get _value => super._value as _BombSpawnModel;

  @override
  $Res call({
    Object? count = freezed,
    Object? time = freezed,
  }) {
    return _then(_BombSpawnModel(
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      time: time == freezed
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_BombSpawnModel implements _BombSpawnModel {
  const _$_BombSpawnModel({this.count = 0, this.time = 0});

  @JsonKey(defaultValue: 0)
  @override
  final int count;
  @JsonKey(defaultValue: 0)
  @override
  final int time;

  @override
  String toString() {
    return 'BombSpawnModel(count: $count, time: $time)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BombSpawnModel &&
            (identical(other.count, count) ||
                const DeepCollectionEquality().equals(other.count, count)) &&
            (identical(other.time, time) ||
                const DeepCollectionEquality().equals(other.time, time)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(count) ^
      const DeepCollectionEquality().hash(time);

  @JsonKey(ignore: true)
  @override
  _$BombSpawnModelCopyWith<_BombSpawnModel> get copyWith =>
      __$BombSpawnModelCopyWithImpl<_BombSpawnModel>(this, _$identity);
}

abstract class _BombSpawnModel implements BombSpawnModel {
  const factory _BombSpawnModel({int count, int time}) = _$_BombSpawnModel;

  @override
  int get count => throw _privateConstructorUsedError;
  @override
  int get time => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$BombSpawnModelCopyWith<_BombSpawnModel> get copyWith =>
      throw _privateConstructorUsedError;
}
