import 'package:flutter/material.dart';

class TransactionReportPage extends StatelessWidget {
  const TransactionReportPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: const Text('Transaction Report'),
      ),
      body: ListView.builder(
        itemCount: 50,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text('Transactions report: $index'),
            subtitle: const Text("test data"),
            leading: const Icon(Icons.currency_bitcoin),
          );
        },
      ),
    );
  }
}
