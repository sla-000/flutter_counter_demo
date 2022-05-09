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
class _$SpawnModelTearOff {
  const _$SpawnModelTearOff();

  _SpawnModel call({int count = 0, int time = 0}) {
    return _SpawnModel(
      count: count,
      time: time,
    );
  }
}

/// @nodoc
const $SpawnModel = _$SpawnModelTearOff();

/// @nodoc
mixin _$SpawnModel {
  int get count => throw _privateConstructorUsedError;
  int get time => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SpawnModelCopyWith<SpawnModel> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpawnModelCopyWith<$Res> {
  factory $SpawnModelCopyWith(SpawnModel value, $Res Function(SpawnModel) then) = _$SpawnModelCopyWithImpl<$Res>;
  $Res call({int count, int time});
}

/// @nodoc
class _$SpawnModelCopyWithImpl<$Res> implements $SpawnModelCopyWith<$Res> {
  _$SpawnModelCopyWithImpl(this._value, this._then);

  final SpawnModel _value;
  // ignore: unused_field
  final $Res Function(SpawnModel) _then;

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
abstract class _$SpawnModelCopyWith<$Res> implements $SpawnModelCopyWith<$Res> {
  factory _$SpawnModelCopyWith(_SpawnModel value, $Res Function(_SpawnModel) then) = __$SpawnModelCopyWithImpl<$Res>;
  @override
  $Res call({int count, int time});
}

/// @nodoc
class __$SpawnModelCopyWithImpl<$Res> extends _$SpawnModelCopyWithImpl<$Res> implements _$SpawnModelCopyWith<$Res> {
  __$SpawnModelCopyWithImpl(_SpawnModel _value, $Res Function(_SpawnModel) _then)
      : super(_value, (v) => _then(v as _SpawnModel));

  @override
  _SpawnModel get _value => super._value as _SpawnModel;

  @override
  $Res call({
    Object? count = freezed,
    Object? time = freezed,
  }) {
    return _then(_SpawnModel(
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

class _$_SpawnModel implements _SpawnModel {
  const _$_SpawnModel({this.count = 0, this.time = 0});

  @JsonKey(defaultValue: 0)
  @override
  final int count;
  @JsonKey(defaultValue: 0)
  @override
  final int time;

  @override
  String toString() {
    return 'SpawnModel(count: $count, time: $time)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SpawnModel &&
            (identical(other.count, count) || const DeepCollectionEquality().equals(other.count, count)) &&
            (identical(other.time, time) || const DeepCollectionEquality().equals(other.time, time)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(count) ^ const DeepCollectionEquality().hash(time);

  @JsonKey(ignore: true)
  @override
  _$SpawnModelCopyWith<_SpawnModel> get copyWith => __$SpawnModelCopyWithImpl<_SpawnModel>(this, _$identity);
}

abstract class _SpawnModel implements SpawnModel {
  const factory _SpawnModel({int count, int time}) = _$_SpawnModel;

  @override
  int get count => throw _privateConstructorUsedError;
  @override
  int get time => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SpawnModelCopyWith<_SpawnModel> get copyWith => throw _privateConstructorUsedError;
}
