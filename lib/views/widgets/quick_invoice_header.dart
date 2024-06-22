import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_style.dart';

class QickInvoiceHeader extends StatelessWidget {
  const QickInvoiceHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Quick Invoice',
          style: AppStyle.styleSemiBold20,
        ),
        CircleAvatar(
          backgroundColor: Color(0xffFAFAFA),
          child: Icon(
            Icons.add,
            // size: 18,
            color: Color(0xff4EB7F2),
          ),
        ),
      ],
    );
  }
}
