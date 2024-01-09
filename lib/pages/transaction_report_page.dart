import 'package:flutter/material.dart';

class TransactionReportPage extends StatelessWidget {
  const TransactionReportPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Transaction Report",
              textScaler: TextScaler.noScaling,
            ),
          ],
        ),
      ),
    );
  }
}
