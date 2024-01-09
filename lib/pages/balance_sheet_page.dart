import 'package:flutter/material.dart';

class BalanceSheetPage extends StatelessWidget {
  const BalanceSheetPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Balance Sheet",
                textScaler: TextScaler.noScaling,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
