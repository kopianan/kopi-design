import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kopi_design/domain/content_data.dart';
import 'package:kopi_design/domain/tab_menu_data.dart';

part 'home_data_state.dart';
part 'home_data_cubit.freezed.dart';

class HomeDataCubit extends Cubit<HomeDataState> {
  HomeDataCubit() : super(HomeDataState.initial());
  void setMenuItem() {
    List<TabMenuData> tabMenu = [
      TabMenuData(label: "Most Viewed", active: true),
      TabMenuData(label: "Nearby"),
      TabMenuData(label: "Latest"),
    ];

    List<ContentData> contentData = [
      ContentData(
          name: "Mount Fuji",
          country: "Tokyo",
          city: "Japan",
          rate: "4.8",
          images: 'images/mountain6.jpg'),
      ContentData(
          name: "Mount Fuji",
          country: "Tokyo",
          city: "Japan",
          rate: "4.8",
          images: 'images/mountain5.jpg'),
      ContentData(
          name: "Mount Fuji",
          country: "Tokyo",
          city: "Japan",
          rate: "4.8",
          images: 'images/mountain4.jpg'),
      ContentData(
          name: "Mount Fuji",
          country: "Tokyo",
          city: "Japan",
          rate: "4.8",
          images: 'images/mountain1.jpg'),
      ContentData(
          name: "Mount Fuji",
          country: "Tokyo",
          city: "Japan",
          rate: "4.8",
          images: 'images/mountain2.jpg'),
      ContentData(
          name: "Mount Fuji",
          country: "Tokyo",
          city: "Japan",
          rate: "4.8",
          images: 'images/mountain3.jpg'),
    ];

    emit(state.copyWith(tabs: tabMenu, content: contentData));
  }

  void setSeletectedMenu(int index) async {
    var cpy = state.tabs.toList();
    for (var element in cpy) {
      element.active = false;
    }
    cpy[index].active = true;
    emit(state.copyWith(tabs: []));
    emit(state.copyWith(tabs: cpy));
  }
}
