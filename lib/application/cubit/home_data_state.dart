part of 'home_data_cubit.dart';

@freezed
class HomeDataState with _$HomeDataState {
  const HomeDataState._();
  factory HomeDataState({
    @Default([]) List<TabMenuData> tabs,
    @Default([]) List<ContentData> content,
  }) = _HomeDataState;
  factory HomeDataState.initial() => HomeDataState();
}
