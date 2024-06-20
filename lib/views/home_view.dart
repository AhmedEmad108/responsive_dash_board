import 'package:flutter/material.dart';
import 'package:responsive_dash_board/views/widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(),
      body: const HomeViewBody(),
    );
  }
}
