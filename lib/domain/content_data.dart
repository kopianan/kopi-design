import 'package:freezed_annotation/freezed_annotation.dart';

part 'content_data.freezed.dart';

@unfreezed
class ContentData with _$ContentData {
  factory ContentData({
    required String name,
    required String country,
    required String city,
    required String rate,
    required String images
  }) = _ContentData;
}
