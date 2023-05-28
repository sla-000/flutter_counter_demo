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
mixin _$BulletsState {
  List<Bullet> get bullets => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BulletsStateCopyWith<BulletsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BulletsStateCopyWith<$Res> {
  factory $BulletsStateCopyWith(
          BulletsState value, $Res Function(BulletsState) then) =
      _$BulletsStateCopyWithImpl<$Res, BulletsState>;
  @useResult
  $Res call({List<Bullet> bullets});
}

/// @nodoc
class _$BulletsStateCopyWithImpl<$Res, $Val extends BulletsState>
    implements $BulletsStateCopyWith<$Res> {
  _$BulletsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bullets = null,
  }) {
    return _then(_value.copyWith(
      bullets: null == bullets
          ? _value.bullets
          : bullets // ignore: cast_nullable_to_non_nullable
              as List<Bullet>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BulletsStateCopyWith<$Res>
    implements $BulletsStateCopyWith<$Res> {
  factory _$$_BulletsStateCopyWith(
          _$_BulletsState value, $Res Function(_$_BulletsState) then) =
      __$$_BulletsStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Bullet> bullets});
}

/// @nodoc
class __$$_BulletsStateCopyWithImpl<$Res>
    extends _$BulletsStateCopyWithImpl<$Res, _$_BulletsState>
    implements _$$_BulletsStateCopyWith<$Res> {
  __$$_BulletsStateCopyWithImpl(
      _$_BulletsState _value, $Res Function(_$_BulletsState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bullets = null,
  }) {
    return _then(_$_BulletsState(
      bullets: null == bullets
          ? _value._bullets
          : bullets // ignore: cast_nullable_to_non_nullable
              as List<Bullet>,
    ));
  }
}

/// @nodoc

class _$_BulletsState implements _BulletsState {
  const _$_BulletsState({final List<Bullet> bullets = const <Bullet>[]})
      : _bullets = bullets;

  final List<Bullet> _bullets;
  @override
  @JsonKey()
  List<Bullet> get bullets {
    if (_bullets is EqualUnmodifiableListView) return _bullets;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_bullets);
  }

  @override
  String toString() {
    return 'BulletsState(bullets: $bullets)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BulletsState &&
            const DeepCollectionEquality().equals(other._bullets, _bullets));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_bullets));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BulletsStateCopyWith<_$_BulletsState> get copyWith =>
      __$$_BulletsStateCopyWithImpl<_$_BulletsState>(this, _$identity);
}

abstract class _BulletsState implements BulletsState {
  const factory _BulletsState({final List<Bullet> bullets}) = _$_BulletsState;

  @override
  List<Bullet> get bullets;
  @override
  @JsonKey(ignore: true)
  _$$_BulletsStateCopyWith<_$_BulletsState> get copyWith =>
      throw _privateConstructorUsedError;
}
