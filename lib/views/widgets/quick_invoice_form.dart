import 'package:flutter/material.dart';
import 'package:responsive_dash_board/views/widgets/custom_button.dart';
import 'package:responsive_dash_board/views/widgets/title_text_field.dart';

class QuickInvoiceForm extends StatelessWidget {
  const QuickInvoiceForm({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          children: [
            Expanded(
                child: TitleTextField(
              text: 'Customer name',
              hint: 'Type customer name',
            )),
            SizedBox(
              width: 16,
            ),
            Expanded(
                child: TitleTextField(
              text: 'Customer Email',
              hint: 'Type customer email',
            )),
          ],
        ),
        SizedBox(
          height: 24,
        ),
        Row(
          children: [
            Expanded(
                child: TitleTextField(
              text: 'Item name',
              hint: 'Type customer name',
            )),
            SizedBox(
              width: 16,
            ),
            Expanded(
              child: TitleTextField(
                text: 'Item mount',
                hint: 'USD',
              ),
            ),
          ],
        ),
        SizedBox(
          height: 24,
        ),
        Row(
          children: [
            Expanded(
              child: CustomButtom(
                title: 'Add more details',
                textColor: Color(0xff4EB7F2),
                backgroundColor: Colors.transparent,
              ),
            ),
            SizedBox(
              width: 24,
            ),
            Expanded(
              child: CustomButtom(
                title: 'Send Money',
              ),
            ),
          ],
        )
      ],
    );
  }
}
