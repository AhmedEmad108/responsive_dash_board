import 'package:flutter/material.dart';
import 'package:responsive_dash_board/views/widgets/custom_drawer.dart';
import 'package:responsive_dash_board/views/widgets/tablet_layout.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          child: CustomDrawer(),
        ),
        const SizedBox(
          width: 32,
        ),
        const Expanded(
          flex: 3,
          child: TabletLayout(),
        ),
        const SizedBox(
          width: 24,
        ),
        Expanded(
          flex: 2,
          child: Container(
            color: Colors.red,
          ),
        ),
        const SizedBox(
          width: 32,
        ),
      ],
    );
  }
}
