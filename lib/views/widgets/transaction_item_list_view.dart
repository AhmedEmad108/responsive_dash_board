import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/transaction_model.dart';
import 'package:responsive_dash_board/views/widgets/transaction_item.dart';

class TransactionItemListView extends StatelessWidget {
  const TransactionItemListView({super.key});
  static const List<TransactionModel> transactionList = [
    TransactionModel(
      title: 'Cash Withdrawal',
      date: '13 Apr, 2022',
      amount: r'$20,129',
      isWithDrawel: true,
    ),
    TransactionModel(
      title: 'Landing Page project',
      date: '13 Apr, 2022 at 3:30 PM',
      amount: r'$2,000',
      isWithDrawel: false,
    ),
    TransactionModel(
      title: 'Juni Mobile App project',
      date: '13 Apr, 2022 at 3:30 PM',
      amount: r'$2,000',
      isWithDrawel: false,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: transactionList
          .map((e) => Padding(
                padding: const EdgeInsets.only(top: 12.0),
                child: TransactionItem(transactionModel: e),
              ))
          .toList(),
    );
    // return ListView.builder(
    //   physics: const NeverScrollableScrollPhysics(),
    //   shrinkWrap: true,
    //   itemCount: transactionList.length,
    //   itemBuilder: (context, index) {
    //     return Padding(
    //       padding: const EdgeInsets.only(top: 12.0),
    //       child: TransactionItem(
    //         transactionModel: transactionList[index],
    //       ),
    //     );
    //   },
    // );
  }
}
