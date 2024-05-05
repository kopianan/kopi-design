import 'package:freezed_annotation/freezed_annotation.dart';

part 'tab_menu_data.freezed.dart';

@unfreezed
class TabMenuData with _$TabMenuData {
  factory TabMenuData({
    required String label,
    bool? active,
  }) = _TabMenuData;
}
