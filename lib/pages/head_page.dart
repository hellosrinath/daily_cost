import 'package:daily_cost/models/head/head_item.dart';
import 'package:daily_cost/providers/app_data_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HeadPage extends StatefulWidget {
  const HeadPage({super.key});

  @override
  State<HeadPage> createState() => _HeadPageState();
}

class _HeadPageState extends State<HeadPage> {
  bool isFirst = true;
  List<HeadItem> headItem = [];

  @override
  void didChangeDependencies() {
    if (isFirst) {
      getHeadData();
    }
    super.didChangeDependencies();
  }

  void getHeadData() async {
    final response = await Provider.of<AppDataProvider>(context, listen: false)
        .getHeadList();
    if (response != null) {
      headItem.clear();
      headItem = response.data;
    }
    setState(() {});
    debugPrint('getHeads: ${headItem.length}');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: const Text('All Head List'),
        foregroundColor: Colors.white,
      ),
      body: ListView.builder(
        itemCount: headItem.length,
        itemBuilder: (BuildContext context, int index) {
          int type = headItem[index].type;
          return Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 4.0),
            child: Card(
              elevation: 3,
              color: Colors.white,
              child: ListTile(
                title: Text(
                  headItem[index].name,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 18,
                  ),
                ),
                subtitle: Text(
                  (type == 1) ? "Income Head" : "Expense Head",
                  style: const TextStyle(
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                    fontSize: 15,
                  ),
                ),
                leading: Icon(
                  Icons.account_balance_wallet_outlined,
                  color: (type == 1) ? Colors.blue : Colors.red,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
