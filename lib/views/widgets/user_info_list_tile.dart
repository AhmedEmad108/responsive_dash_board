import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dash_board/models/user_info_model.dart';
import 'package:responsive_dash_board/utils/app_style.dart';

class UserInfoListTile extends StatelessWidget {
  const UserInfoListTile(
      {super.key,
      required this.userInfoModel,
      required this.width,
      required this.height});
  final UserInfoModel userInfoModel;
  final double width, height;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xffFAFAFA),
      // margin: const EdgeInsets.symmetric(horizontal: 20),
      elevation: 0,
      child: Center(
        child: ListTile(
          leading: SvgPicture.asset(
            userInfoModel.image,
            width: width,
            height: height,
          ),
          title: FittedBox(
            alignment: Alignment.centerLeft,
            fit: BoxFit.scaleDown,
            child: Text(
              userInfoModel.title,
            ),
          ),
          titleTextStyle: AppStyle.styleSemiBold16(context),
          subtitle: FittedBox(
            alignment: Alignment.centerLeft,
            fit: BoxFit.scaleDown,
            child: Text(
              userInfoModel.subTitle,
            ),
          ),
          subtitleTextStyle: AppStyle.styleRegular12(context),
        ),
      ),
    );
  }
}
