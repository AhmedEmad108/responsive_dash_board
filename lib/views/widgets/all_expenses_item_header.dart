import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dash_board/models/all_expenses_item_model.dart';

class AllExpensesItemHeader extends StatelessWidget {
  const AllExpensesItemHeader({
    super.key,
    required this.allExpensesItemModel,
    required this.imageColor,
    required this.imageBackgroundColor,
    required this.imageIcon,
  });
  final AllExpensesItemModel allExpensesItemModel;
  final Color imageColor, imageBackgroundColor, imageIcon;
  @override
  Widget build(BuildContext context) {
    return Row(
      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Flexible(
          child: ConstrainedBox(
            constraints: const BoxConstraints(
              maxHeight: 60,
              maxWidth: 60,
            ),
            child: AspectRatio(
              aspectRatio: 1,
              child: Container(
                // padding: const EdgeInsets.all(14),
                decoration: ShapeDecoration(
                  shape: const OvalBorder(),
                  color: imageBackgroundColor,
                ),
                child: Center(
                  child: SvgPicture.asset(
                    allExpensesItemModel.image,
                    colorFilter: ColorFilter.mode(imageColor, BlendMode.srcIn),
                  ),
                ),
              ),
            ),
          ),
        ),
        const Spacer(),
        Transform.rotate(
          angle: -3.14,
          child: Icon(
            Icons.arrow_back_ios_new_outlined,
            color: imageIcon,
          ),
        ),
      ],
    );
  }
}
