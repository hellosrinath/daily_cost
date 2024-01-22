import 'package:daily_cost/utils/constants.dart';
import 'package:flutter/material.dart';

class HeadPage extends StatelessWidget {
  const HeadPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: const Text('Create Head'),
      ),
      body: ListView.builder(
        itemCount: 50,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text('Head Creation: $index'),
            subtitle: const Text("test data"),
            leading: const Icon(Icons.currency_bitcoin),
          );
        },
      ),
    );
  }
}
