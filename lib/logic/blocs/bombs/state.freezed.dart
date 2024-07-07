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
mixin _$BombsState {
  List<Bomb> get bombs => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BombsStateCopyWith<BombsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BombsStateCopyWith<$Res> {
  factory $BombsStateCopyWith(
          BombsState value, $Res Function(BombsState) then) =
      _$BombsStateCopyWithImpl<$Res, BombsState>;
  @useResult
  $Res call({List<Bomb> bombs});
}

/// @nodoc
class _$BombsStateCopyWithImpl<$Res, $Val extends BombsState>
    implements $BombsStateCopyWith<$Res> {
  _$BombsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bombs = null,
  }) {
    return _then(_value.copyWith(
      bombs: null == bombs
          ? _value.bombs
          : bombs // ignore: cast_nullable_to_non_nullable
              as List<Bomb>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BombsStateCopyWith<$Res>
    implements $BombsStateCopyWith<$Res> {
  factory _$$_BombsStateCopyWith(
          _$_BombsState value, $Res Function(_$_BombsState) then) =
      __$$_BombsStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Bomb> bombs});
}

/// @nodoc
class __$$_BombsStateCopyWithImpl<$Res>
    extends _$BombsStateCopyWithImpl<$Res, _$_BombsState>
    implements _$$_BombsStateCopyWith<$Res> {
  __$$_BombsStateCopyWithImpl(
      _$_BombsState _value, $Res Function(_$_BombsState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bombs = null,
  }) {
    return _then(_$_BombsState(
      bombs: null == bombs
          ? _value._bombs
          : bombs // ignore: cast_nullable_to_non_nullable
              as List<Bomb>,
    ));
  }
}

/// @nodoc

class _$_BombsState implements _BombsState {
  const _$_BombsState({final List<Bomb> bombs = const <Bomb>[]})
      : _bombs = bombs;

  final List<Bomb> _bombs;
  @override
  @JsonKey()
  List<Bomb> get bombs {
    if (_bombs is EqualUnmodifiableListView) return _bombs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_bombs);
  }

  @override
  String toString() {
    return 'BombsState(bombs: $bombs)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BombsState &&
            const DeepCollectionEquality().equals(other._bombs, _bombs));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_bombs));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BombsStateCopyWith<_$_BombsState> get copyWith =>
      __$$_BombsStateCopyWithImpl<_$_BombsState>(this, _$identity);
}

abstract class _BombsState implements BombsState {
  const factory _BombsState({final List<Bomb> bombs}) = _$_BombsState;

  @override
  List<Bomb> get bombs;
  @override
  @JsonKey(ignore: true)
  _$$_BombsStateCopyWith<_$_BombsState> get copyWith =>
      throw _privateConstructorUsedError;
}
