// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'content_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ContentData {
  String get name => throw _privateConstructorUsedError;
  set name(String value) => throw _privateConstructorUsedError;
  String get country => throw _privateConstructorUsedError;
  set country(String value) => throw _privateConstructorUsedError;
  String get city => throw _privateConstructorUsedError;
  set city(String value) => throw _privateConstructorUsedError;
  String get rate => throw _privateConstructorUsedError;
  set rate(String value) => throw _privateConstructorUsedError;
  String get images => throw _privateConstructorUsedError;
  set images(String value) => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ContentDataCopyWith<ContentData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContentDataCopyWith<$Res> {
  factory $ContentDataCopyWith(
          ContentData value, $Res Function(ContentData) then) =
      _$ContentDataCopyWithImpl<$Res, ContentData>;
  @useResult
  $Res call(
      {String name, String country, String city, String rate, String images});
}

/// @nodoc
class _$ContentDataCopyWithImpl<$Res, $Val extends ContentData>
    implements $ContentDataCopyWith<$Res> {
  _$ContentDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? country = null,
    Object? city = null,
    Object? rate = null,
    Object? images = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      rate: null == rate
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as String,
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ContentDataImplCopyWith<$Res>
    implements $ContentDataCopyWith<$Res> {
  factory _$$ContentDataImplCopyWith(
          _$ContentDataImpl value, $Res Function(_$ContentDataImpl) then) =
      __$$ContentDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name, String country, String city, String rate, String images});
}

/// @nodoc
class __$$ContentDataImplCopyWithImpl<$Res>
    extends _$ContentDataCopyWithImpl<$Res, _$ContentDataImpl>
    implements _$$ContentDataImplCopyWith<$Res> {
  __$$ContentDataImplCopyWithImpl(
      _$ContentDataImpl _value, $Res Function(_$ContentDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? country = null,
    Object? city = null,
    Object? rate = null,
    Object? images = null,
  }) {
    return _then(_$ContentDataImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      rate: null == rate
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as String,
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ContentDataImpl implements _ContentData {
  _$ContentDataImpl(
      {required this.name,
      required this.country,
      required this.city,
      required this.rate,
      required this.images});

  @override
  String name;
  @override
  String country;
  @override
  String city;
  @override
  String rate;
  @override
  String images;

  @override
  String toString() {
    return 'ContentData(name: $name, country: $country, city: $city, rate: $rate, images: $images)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ContentDataImplCopyWith<_$ContentDataImpl> get copyWith =>
      __$$ContentDataImplCopyWithImpl<_$ContentDataImpl>(this, _$identity);
}

abstract class _ContentData implements ContentData {
  factory _ContentData(
      {required String name,
      required String country,
      required String city,
      required String rate,
      required String images}) = _$ContentDataImpl;

  @override
  String get name;
  set name(String value);
  @override
  String get country;
  set country(String value);
  @override
  String get city;
  set city(String value);
  @override
  String get rate;
  set rate(String value);
  @override
  String get images;
  set images(String value);
  @override
  @JsonKey(ignore: true)
  _$$ContentDataImplCopyWith<_$ContentDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
