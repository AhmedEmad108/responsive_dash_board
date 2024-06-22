import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/drawer_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/views/widgets/drawer_item.dart';

class DrawerItemListView extends StatefulWidget {
  const DrawerItemListView({super.key});

  @override
  State<DrawerItemListView> createState() => _DrawerItemListViewState();
}

class _DrawerItemListViewState extends State<DrawerItemListView> {
  int aciveIndex = 0;
  final List<DrawerModel> drawerList = [
    DrawerModel(image: Assets.imagesDashboard, title: 'Dashboard'),
    DrawerModel(image: Assets.imagesTransaction, title: 'My Transaction'),
    DrawerModel(image: Assets.imagesStatistics, title: 'Statistics'),
    DrawerModel(image: Assets.imagesWallentAccont, title: 'Wallet Account'),
    DrawerModel(image: Assets.imagesInvestment, title: 'My Investments'),
  ];
  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      // shrinkWrap: true,
      // physics: const NeverScrollableScrollPhysics(),
      itemCount: drawerList.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            if (aciveIndex != index) {
              setState(() {
                aciveIndex = index;
              });
            }
          },
          child: Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: DrawerItem(
              drawerModel: drawerList[index],
              isActive: aciveIndex == index,
            ),
          ),
        );
      },
    );
  }
}
