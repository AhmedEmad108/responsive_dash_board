import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dash_board/models/drawer_model.dart';
import 'package:responsive_dash_board/utils/app_style.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem({
    super.key,
    required this.drawerModel,
    required this.isActive,
  });
  final DrawerModel drawerModel;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return isActive
        ? ActiveDrawerItem(drawerModel: drawerModel)
        : InActiveDrawerItem(drawerModel: drawerModel);
  }
}

class InActiveDrawerItem extends StatelessWidget {
  const InActiveDrawerItem({
    super.key,
    required this.drawerModel,
  });

  final DrawerModel drawerModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      // contentPadding: const EdgeInsets.all(20),
      leading: SvgPicture.asset(drawerModel.image),
      title: Text(
        drawerModel.title,
        style: AppStyle.styleRegular16,
      ),
    );
  }
}

class ActiveDrawerItem extends StatelessWidget {
  const ActiveDrawerItem({super.key, required this.drawerModel});
  final DrawerModel drawerModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      // contentPadding: const EdgeInsets.all(20),
      leading: SvgPicture.asset(drawerModel.image),
      title: Text(
        drawerModel.title,
        style: AppStyle.styleBold16,
      ),
      trailing: Container(
        width: 3,
        color: const Color(0xff4EB7F2),
      ),
    );
  }
}
