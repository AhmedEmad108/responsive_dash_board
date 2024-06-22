import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/size_config.dart';
import 'package:responsive_dash_board/views/widgets/income_chart.dart';
import 'package:responsive_dash_board/views/widgets/income_chart_details.dart';
import 'package:responsive_dash_board/views/widgets/income_details.dart';

class IncomeSectionBody extends StatelessWidget {
  const IncomeSectionBody({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    // print(width);
    if (width >= SizeConfig.desktop && width <= 1800) {
      return const Expanded(
          child: Padding(
        padding: EdgeInsets.all(16),
        child: IncomeChartDetails(),
      ));
    } else {
      return const Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(child: IncomeChart()),
          Expanded(flex: 2, child: IncomeDetails()),
        ],
      );
    }
  }
}
