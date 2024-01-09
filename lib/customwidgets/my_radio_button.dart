import 'package:flutter/material.dart';

enum BestTutorSite { income, expense }

class MyRadioButton extends StatefulWidget {
  const MyRadioButton({super.key});

  @override
  State<MyRadioButton> createState() => _MyRadioButtonState();
}

class _MyRadioButtonState extends State<MyRadioButton> {
  BestTutorSite site = BestTutorSite.income;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: const Text('Income'),
          leading: Radio(
            value: BestTutorSite.income,
            groupValue: site,
            onChanged: (BestTutorSite? value) {
              setState(() {
                site = value!;
              });
            },
          ),
        ),
        ListTile(
          title: const Text('Expense'),
          leading: Radio(
            value: BestTutorSite.expense,
            groupValue: site,
            onChanged: (BestTutorSite? value) {
              setState(() {
                site = value!;
              });
            },
          ),
        ),
      ],
    );
  }
}
