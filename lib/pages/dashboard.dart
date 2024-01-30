import 'package:daily_cost/providers/app_data_provider.dart';
import 'package:daily_cost/utils/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/transaction_list/transaction_data.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  bool isFirst = true;
  String fromDate =
      getFormattedDate(DateTime.now().subtract(const Duration(days: 7)));
  String toDate = getFormattedDate(DateTime.now());
  List<TransactionData> transList = [];

  @override
  void didChangeDependencies() {
    if (isFirst) {
      getPeriodicTransaction(fromDate, toDate);
    }
    super.didChangeDependencies();
  }

  void getPeriodicTransaction(String fromDate, String toDate) async {
    final response = await Provider.of<AppDataProvider>(context, listen: false)
        .getPeriodicTransaction(fromDate, toDate);
    setState(() {});
    if (response != null) {
      transList = response.data;
    }
    debugPrint('periodicTransaction: ${response?.data.length}');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: const Text('Dashboard'),
      ),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.0),
            child: SizedBox(
              width: double.infinity,
              child: Text(
                'Choose Date Range',
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: Text('$fromDate - $toDate'),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: transList.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  title: Text(transList[index].remarks),
                  subtitle: Text("Amount: ${transList[index].amount}"),
                  leading: const Icon(Icons.currency_bitcoin),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
