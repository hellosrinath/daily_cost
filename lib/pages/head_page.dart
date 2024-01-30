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
        title: const Text('Create Head'),
      ),
      body: ListView.builder(
        itemCount: headItem.length,
        itemBuilder: (BuildContext context, int index) {
          int type = headItem[index].type;
          return ListTile(
            title: Text(headItem[index].name),
            subtitle: Text((type == 1) ? "Income Head" : "Expense Head"),
            leading: const Icon(Icons.currency_bitcoin),
          );
        },
      ),
    );
  }
}
