// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tab_menu_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TabMenuData {
  String get label => throw _privateConstructorUsedError;
  set label(String value) => throw _privateConstructorUsedError;
  bool? get active => throw _privateConstructorUsedError;
  set active(bool? value) => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TabMenuDataCopyWith<TabMenuData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TabMenuDataCopyWith<$Res> {
  factory $TabMenuDataCopyWith(
          TabMenuData value, $Res Function(TabMenuData) then) =
      _$TabMenuDataCopyWithImpl<$Res, TabMenuData>;
  @useResult
  $Res call({String label, bool? active});
}

/// @nodoc
class _$TabMenuDataCopyWithImpl<$Res, $Val extends TabMenuData>
    implements $TabMenuDataCopyWith<$Res> {
  _$TabMenuDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = null,
    Object? active = freezed,
  }) {
    return _then(_value.copyWith(
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      active: freezed == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TabMenuDataImplCopyWith<$Res>
    implements $TabMenuDataCopyWith<$Res> {
  factory _$$TabMenuDataImplCopyWith(
          _$TabMenuDataImpl value, $Res Function(_$TabMenuDataImpl) then) =
      __$$TabMenuDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String label, bool? active});
}

/// @nodoc
class __$$TabMenuDataImplCopyWithImpl<$Res>
    extends _$TabMenuDataCopyWithImpl<$Res, _$TabMenuDataImpl>
    implements _$$TabMenuDataImplCopyWith<$Res> {
  __$$TabMenuDataImplCopyWithImpl(
      _$TabMenuDataImpl _value, $Res Function(_$TabMenuDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = null,
    Object? active = freezed,
  }) {
    return _then(_$TabMenuDataImpl(
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      active: freezed == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$TabMenuDataImpl implements _TabMenuData {
  _$TabMenuDataImpl({required this.label, this.active});

  @override
  String label;
  @override
  bool? active;

  @override
  String toString() {
    return 'TabMenuData(label: $label, active: $active)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TabMenuDataImplCopyWith<_$TabMenuDataImpl> get copyWith =>
      __$$TabMenuDataImplCopyWithImpl<_$TabMenuDataImpl>(this, _$identity);
}

abstract class _TabMenuData implements TabMenuData {
  factory _TabMenuData({required String label, bool? active}) =
      _$TabMenuDataImpl;

  @override
  String get label;
  set label(String value);
  @override
  bool? get active;
  set active(bool? value);
  @override
  @JsonKey(ignore: true)
  _$$TabMenuDataImplCopyWith<_$TabMenuDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
