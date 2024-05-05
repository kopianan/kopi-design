import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kopi_design/application/cubit/home_data_cubit.dart';
import 'package:kopi_design/domain/tab_menu_data.dart';
import 'package:kopi_design/presentation/detail_page.dart';
import 'package:kopi_design/presentation/widgets/custom_app_bar.dart';
import 'package:kopi_design/presentation/widgets/custom_tab_item.dart';
import 'package:kopi_design/presentation/widgets/parallax_image_card.dart';
import 'package:kopi_design/util/parallax_flow_delegate.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index = 0;
  final GlobalKey _imageKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeDataCubit()..setMenuItem(),
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            onTap: (idx) {
              setState(() {
                index = idx;
              });
            },
            showSelectedLabels: false,
            currentIndex: index,
            elevation: 0,
            iconSize: 25,
            showUnselectedLabels: false,
            backgroundColor: Colors.white,
            selectedIconTheme: const IconThemeData(
              color: Colors.black,
            ),
            unselectedIconTheme: const IconThemeData(
              color: Colors.black,
            ),
            items: const [
              BottomNavigationBarItem(
                  label: "",
                  activeIcon: Icon(
                    Icons.home_rounded,
                  ),
                  icon: Icon(
                    Icons.home_outlined,
                  )),
              BottomNavigationBarItem(
                label: "",
                icon: Icon(
                  Icons.watch_later_outlined,
                ),
                activeIcon: Icon(
                  Icons.watch_later_rounded,
                ),
              ),
              BottomNavigationBarItem(
                label: "",
                activeIcon: Icon(
                  Icons.favorite_rounded,
                ),
                icon: Icon(
                  Icons.favorite_border_rounded,
                ),
              ),
              BottomNavigationBarItem(
                  label: "",
                  activeIcon: Icon(
                    Icons.person_2_rounded,
                  ),
                  icon: Icon(
                    Icons.person_2_outlined,
                  )),
            ]),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 25),
                child: Column(
                  children: [
                    CustomAppBar(),
                    SizedBox(height: 30),
                    Row(
                      children: [
                        Text(
                          "Popular places",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        Spacer(),
                        Text(
                          "View all",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                              color: Colors.grey),
                        ),
                      ],
                    ),
                    SizedBox(height: 30),
                  ],
                ),
              ),
              SizedBox(
                height: 50,
                child: BlocBuilder<HomeDataCubit, HomeDataState>(
                  builder: (context, state) {
                    return ListView.builder(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemCount: state.tabs.length,
                      itemBuilder: (context, idx) {
                        final singleItem = state.tabs[idx];
                        return Row(
                          children: [
                            const SizedBox(width: 20),
                            InkWell(
                              borderRadius: BorderRadius.circular(20),
                              onTap: () {
                                context
                                    .read<HomeDataCubit>()
                                    .setSeletectedMenu(idx);
                              },
                              child: CustomTabItem(
                                label: singleItem.label,
                                selected: singleItem.active ?? false,
                              ),
                            ),
                            const SizedBox(width: 20)
                          ],
                        );
                      },
                    );
                  },
                ),
              ),
              BlocBuilder<HomeDataCubit, HomeDataState>(
                builder: (context, state) {
                  return SizedBox(
                    height: MediaQuery.of(context).size.height * 0.6,
                    child: CarouselSlider.builder(
                        options: CarouselOptions(
                          pageSnapping: false,
                          enableInfiniteScroll: false,
                          enlargeCenterPage: false,
                          aspectRatio: 16 / 9,
                          enlargeStrategy: CenterPageEnlargeStrategy.zoom,
                        ),
                        itemCount: state.content.length,
                        itemBuilder: (context, index, realIndex) {
                          final singleData = state.content[realIndex];
                          return InkWell(
                            borderRadius: BorderRadius.circular(20),
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => DetailPage(
                                     content: singleData,
                                        heroTag: "images_mountain_$realIndex",

                                      )));
                            },
                            child: ParallaxImageCard(
                              contentData: singleData,
                              heroTag: "images_mountain_$realIndex",
                            ),
                          );
                        }),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
