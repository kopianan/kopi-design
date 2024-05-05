// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_data_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeDataState {
  List<TabMenuData> get tabs => throw _privateConstructorUsedError;
  List<ContentData> get content => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeDataStateCopyWith<HomeDataState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeDataStateCopyWith<$Res> {
  factory $HomeDataStateCopyWith(
          HomeDataState value, $Res Function(HomeDataState) then) =
      _$HomeDataStateCopyWithImpl<$Res, HomeDataState>;
  @useResult
  $Res call({List<TabMenuData> tabs, List<ContentData> content});
}

/// @nodoc
class _$HomeDataStateCopyWithImpl<$Res, $Val extends HomeDataState>
    implements $HomeDataStateCopyWith<$Res> {
  _$HomeDataStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tabs = null,
    Object? content = null,
  }) {
    return _then(_value.copyWith(
      tabs: null == tabs
          ? _value.tabs
          : tabs // ignore: cast_nullable_to_non_nullable
              as List<TabMenuData>,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as List<ContentData>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HomeDataStateImplCopyWith<$Res>
    implements $HomeDataStateCopyWith<$Res> {
  factory _$$HomeDataStateImplCopyWith(
          _$HomeDataStateImpl value, $Res Function(_$HomeDataStateImpl) then) =
      __$$HomeDataStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<TabMenuData> tabs, List<ContentData> content});
}

/// @nodoc
class __$$HomeDataStateImplCopyWithImpl<$Res>
    extends _$HomeDataStateCopyWithImpl<$Res, _$HomeDataStateImpl>
    implements _$$HomeDataStateImplCopyWith<$Res> {
  __$$HomeDataStateImplCopyWithImpl(
      _$HomeDataStateImpl _value, $Res Function(_$HomeDataStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tabs = null,
    Object? content = null,
  }) {
    return _then(_$HomeDataStateImpl(
      tabs: null == tabs
          ? _value._tabs
          : tabs // ignore: cast_nullable_to_non_nullable
              as List<TabMenuData>,
      content: null == content
          ? _value._content
          : content // ignore: cast_nullable_to_non_nullable
              as List<ContentData>,
    ));
  }
}

/// @nodoc

class _$HomeDataStateImpl extends _HomeDataState {
  _$HomeDataStateImpl(
      {final List<TabMenuData> tabs = const [],
      final List<ContentData> content = const []})
      : _tabs = tabs,
        _content = content,
        super._();

  final List<TabMenuData> _tabs;
  @override
  @JsonKey()
  List<TabMenuData> get tabs {
    if (_tabs is EqualUnmodifiableListView) return _tabs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tabs);
  }

  final List<ContentData> _content;
  @override
  @JsonKey()
  List<ContentData> get content {
    if (_content is EqualUnmodifiableListView) return _content;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_content);
  }

  @override
  String toString() {
    return 'HomeDataState(tabs: $tabs, content: $content)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeDataStateImpl &&
            const DeepCollectionEquality().equals(other._tabs, _tabs) &&
            const DeepCollectionEquality().equals(other._content, _content));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_tabs),
      const DeepCollectionEquality().hash(_content));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeDataStateImplCopyWith<_$HomeDataStateImpl> get copyWith =>
      __$$HomeDataStateImplCopyWithImpl<_$HomeDataStateImpl>(this, _$identity);
}

abstract class _HomeDataState extends HomeDataState {
  factory _HomeDataState(
      {final List<TabMenuData> tabs,
      final List<ContentData> content}) = _$HomeDataStateImpl;
  _HomeDataState._() : super._();

  @override
  List<TabMenuData> get tabs;
  @override
  List<ContentData> get content;
  @override
  @JsonKey(ignore: true)
  _$$HomeDataStateImplCopyWith<_$HomeDataStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
