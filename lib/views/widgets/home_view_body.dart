import 'package:flutter/material.dart';
import 'package:responsive_dash_board/views/widgets/adabtive_layout.dart';
import 'package:responsive_dash_board/views/widgets/desktop_layout.dart';
import 'package:responsive_dash_board/views/widgets/tablet_layout.dart';

class DashBoardViewBody extends StatelessWidget {
  const DashBoardViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return AdabtiveLayout(
      mobileLayout: (BuildContext context) => const TabletLayout(),
      tabletLayout: (BuildContext context) => const TabletLayout(),
      desktopLayout: (BuildContext context) => const DesktopLayout(),
    );
  }
}
