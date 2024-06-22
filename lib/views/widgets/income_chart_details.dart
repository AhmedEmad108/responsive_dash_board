import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_style.dart';

class IncomeChartDetails extends StatefulWidget {
  const IncomeChartDetails({super.key});

  @override
  State<IncomeChartDetails> createState() => _IncomeChartState();
}

class _IncomeChartState extends State<IncomeChartDetails> {
  int activeIndex = -1;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: PieChart(
        getChartData(),
      ),
    );
  }

  PieChartData getChartData() {
    return PieChartData(
        sectionsSpace: 0,
        pieTouchData: PieTouchData(
          enabled: true,
          touchCallback: (p0, p1) {
            activeIndex = p1?.touchedSection?.touchedSectionIndex ?? -1;
            setState(() {});
          },
        ),
        sections: [
          PieChartSectionData(
              titlePositionPercentageOffset: activeIndex == 0 ? 1.5 : null,
              title: activeIndex == 0 ? 'Design Service' : '40%',
              value: 40,
              titleStyle: AppStyle.styleMedium16(context).copyWith(
                color: activeIndex == 0 ? null : Colors.white,
              ),
              radius: activeIndex == 0 ? 60 : 50,
              color: const Color(0xff208CC8)),
          PieChartSectionData(
              titlePositionPercentageOffset: activeIndex == 1 ? 2.2 : null,
              title: activeIndex == 1 ? 'Design Product' : '25%',
              value: 25,
              titleStyle: AppStyle.styleMedium16(context).copyWith(
                color: activeIndex == 1 ? null : Colors.white,
              ),
              radius: activeIndex == 1 ? 60 : 50,
              color: const Color(0xff4EB7F2)),
          PieChartSectionData(
              titlePositionPercentageOffset: activeIndex == 2 ? 1.5 : null,
              title: activeIndex == 2 ? 'Product royalti' : '20%',
              value: 20,
              titleStyle: AppStyle.styleMedium16(context).copyWith(
                color: activeIndex == 2 ? null : Colors.white,
              ),
              radius: activeIndex == 2 ? 60 : 50,
              color: const Color(0xff064061)),
          PieChartSectionData(
              titlePositionPercentageOffset: activeIndex == 3 ? 1.5 : null,
              title: activeIndex == 3 ? 'Other' : '22%',
              value: 22,
              titleStyle: AppStyle.styleMedium16(context).copyWith(
                color: activeIndex == 3 ? null : Colors.white,
              ),
              radius: activeIndex == 3 ? 60 : 50,
              color: const Color(0xffE2DECD)),
        ]);
  }
}
