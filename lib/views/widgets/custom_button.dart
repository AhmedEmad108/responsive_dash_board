import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_style.dart';

class CustomButtom extends StatelessWidget {
  const CustomButtom(
      {super.key, required this.title, this.textColor, this.backgroundColor});
  final String title;
  final Color? textColor, backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: backgroundColor ?? const Color(0xff4EB7F2),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: Text(
            title,
            style: AppStyle.styleSemiBold18.copyWith(
              color: textColor,
            ),
          ),
        ),
      ),
    );
  }
}

class CustomButtom2 extends StatelessWidget {
  const CustomButtom2(
      {super.key, required this.title, this.textColor, this.backgroundColor});
  final String title;
  final Color? textColor, backgroundColor;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        elevation: 0,
        backgroundColor: backgroundColor ?? const Color(0xff4EB7F2),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      onPressed: () {},
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Text(
          title,
          style: AppStyle.styleSemiBold18.copyWith(
            color: textColor,
          ),
        ),
      ),
    );
  }
}
