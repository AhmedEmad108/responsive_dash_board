import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/item_detail_model.dart';
import 'package:responsive_dash_board/utils/app_style.dart';

class ItemDetails extends StatelessWidget {
  const ItemDetails({super.key, required this.item});
  final ItemDetailModel item;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: 12,
        height: 12,
        decoration: ShapeDecoration(
          color: item.color,
          shape: const OvalBorder(),
        ),
      ),
      title: FittedBox(
        alignment: Alignment.centerLeft,
        fit: BoxFit.scaleDown,
        child: Text(
          item.title,
          style: AppStyle.styleRegular16(context),
        ),
      ),
      trailing: FittedBox(
        alignment: Alignment.centerLeft,
        fit: BoxFit.scaleDown,
        child: Text(
          '${item.value} %',
          style: AppStyle.styleMedium16(context),
        ),
      ),
    );
  }
}
