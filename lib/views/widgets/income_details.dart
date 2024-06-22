import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/item_detail_model.dart';
import 'package:responsive_dash_board/views/widgets/item_details.dart';

class IncomeDetails extends StatelessWidget {
  const IncomeDetails({super.key});
  static const List<ItemDetailModel> items = [
    ItemDetailModel(
        color: Color(0xff208CC8), title: 'Design service', value: '40'),
    ItemDetailModel(
        color: Color(0xff4EB7F2), title: 'Design product', value: '25'),
    ItemDetailModel(
        color: Color(0xff064061), title: 'Product royalti', value: '20'),
    ItemDetailModel(color: Color(0xffE2DECD), title: 'Other', value: '22'),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: items.map((e) => ItemDetails(item: e)).toList(),
    // );
    // return ListView.builder(
    //   shrinkWrap: true,
    //   physics: const NeverScrollableScrollPhysics(),
    //   itemCount: items.length,
    //   itemBuilder: (context, index) {
    //     return ItemDetails(
    //       item: items[index],
    //     );
    //   },
    );
  }
}
