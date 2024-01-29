import 'package:flutter/material.dart';

enum BestTutorSite { income, expense, contra }

class MyRadioButton extends StatefulWidget {
  final Function(int) onSubmit;

  const MyRadioButton({
    super.key,
    required this.onSubmit,
  });

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
                widget.onSubmit(1);
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
                widget.onSubmit(2);
              });
            },
          ),
        ),
        ListTile(
          title: const Text('Contra'),
          leading: Radio(
            value: BestTutorSite.contra,
            groupValue: site,
            onChanged: (BestTutorSite? value) {
              setState(() {
                site = value!;
                widget.onSubmit(3);
              });
            },
          ),
        ),
      ],
    );
  }
}
