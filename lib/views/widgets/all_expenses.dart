import 'package:flutter/material.dart';
import 'package:responsive_dash_board/views/widgets/all_expenses_header.dart';
import 'package:responsive_dash_board/views/widgets/all_expenses_item_list_view.dart';
import 'package:responsive_dash_board/views/widgets/custom_background_container.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackGroundContainer(
      padding: 20,
      child: Column(
        children: [
          AllExpensesHeader(
            title: 'All Expenses',
          ),
          SizedBox(
            height: 16,
          ),
          AllExpensesItemListView(),
        ],
      ),
    );
  }
}
