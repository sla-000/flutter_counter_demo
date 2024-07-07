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
mixin _$WavesState {
  int get count => throw _privateConstructorUsedError;
  int get waveTime => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WavesStateCopyWith<WavesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WavesStateCopyWith<$Res> {
  factory $WavesStateCopyWith(
          WavesState value, $Res Function(WavesState) then) =
      _$WavesStateCopyWithImpl<$Res, WavesState>;
  @useResult
  $Res call({int count, int waveTime});
}

/// @nodoc
class _$WavesStateCopyWithImpl<$Res, $Val extends WavesState>
    implements $WavesStateCopyWith<$Res> {
  _$WavesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? waveTime = null,
  }) {
    return _then(_value.copyWith(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      waveTime: null == waveTime
          ? _value.waveTime
          : waveTime // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_WavesStateCopyWith<$Res>
    implements $WavesStateCopyWith<$Res> {
  factory _$$_WavesStateCopyWith(
          _$_WavesState value, $Res Function(_$_WavesState) then) =
      __$$_WavesStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int count, int waveTime});
}

/// @nodoc
class __$$_WavesStateCopyWithImpl<$Res>
    extends _$WavesStateCopyWithImpl<$Res, _$_WavesState>
    implements _$$_WavesStateCopyWith<$Res> {
  __$$_WavesStateCopyWithImpl(
      _$_WavesState _value, $Res Function(_$_WavesState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? waveTime = null,
  }) {
    return _then(_$_WavesState(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      waveTime: null == waveTime
          ? _value.waveTime
          : waveTime // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_WavesState implements _WavesState {
  const _$_WavesState({this.count = 0, this.waveTime = 0});

  @override
  @JsonKey()
  final int count;
  @override
  @JsonKey()
  final int waveTime;

  @override
  String toString() {
    return 'WavesState(count: $count, waveTime: $waveTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WavesState &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.waveTime, waveTime) ||
                other.waveTime == waveTime));
  }

  @override
  int get hashCode => Object.hash(runtimeType, count, waveTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WavesStateCopyWith<_$_WavesState> get copyWith =>
      __$$_WavesStateCopyWithImpl<_$_WavesState>(this, _$identity);
}

abstract class _WavesState implements WavesState {
  const factory _WavesState({final int count, final int waveTime}) =
      _$_WavesState;

  @override
  int get count;
  @override
  int get waveTime;
  @override
  @JsonKey(ignore: true)
  _$$_WavesStateCopyWith<_$_WavesState> get copyWith =>
      throw _privateConstructorUsedError;
}
