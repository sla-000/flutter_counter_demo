// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'repo.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SpawnModel {
  int get count => throw _privateConstructorUsedError;
  int get time => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SpawnModelCopyWith<SpawnModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpawnModelCopyWith<$Res> {
  factory $SpawnModelCopyWith(
          SpawnModel value, $Res Function(SpawnModel) then) =
      _$SpawnModelCopyWithImpl<$Res, SpawnModel>;
  @useResult
  $Res call({int count, int time});
}

/// @nodoc
class _$SpawnModelCopyWithImpl<$Res, $Val extends SpawnModel>
    implements $SpawnModelCopyWith<$Res> {
  _$SpawnModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? time = null,
  }) {
    return _then(_value.copyWith(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SpawnModelCopyWith<$Res>
    implements $SpawnModelCopyWith<$Res> {
  factory _$$_SpawnModelCopyWith(
          _$_SpawnModel value, $Res Function(_$_SpawnModel) then) =
      __$$_SpawnModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int count, int time});
}

/// @nodoc
class __$$_SpawnModelCopyWithImpl<$Res>
    extends _$SpawnModelCopyWithImpl<$Res, _$_SpawnModel>
    implements _$$_SpawnModelCopyWith<$Res> {
  __$$_SpawnModelCopyWithImpl(
      _$_SpawnModel _value, $Res Function(_$_SpawnModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? time = null,
  }) {
    return _then(_$_SpawnModel(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_SpawnModel implements _SpawnModel {
  const _$_SpawnModel({this.count = 0, this.time = 0});

  @override
  @JsonKey()
  final int count;
  @override
  @JsonKey()
  final int time;

  @override
  String toString() {
    return 'SpawnModel(count: $count, time: $time)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SpawnModel &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.time, time) || other.time == time));
  }

  @override
  int get hashCode => Object.hash(runtimeType, count, time);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SpawnModelCopyWith<_$_SpawnModel> get copyWith =>
      __$$_SpawnModelCopyWithImpl<_$_SpawnModel>(this, _$identity);
}

abstract class _SpawnModel implements SpawnModel {
  const factory _SpawnModel({final int count, final int time}) = _$_SpawnModel;

  @override
  int get count;
  @override
  int get time;
  @override
  @JsonKey(ignore: true)
  _$$_SpawnModelCopyWith<_$_SpawnModel> get copyWith =>
      throw _privateConstructorUsedError;
}
