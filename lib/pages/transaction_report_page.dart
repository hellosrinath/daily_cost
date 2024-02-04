import 'package:daily_cost/customwidgets/loading_widget.dart';
import 'package:daily_cost/providers/app_data_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/balance_sheet/balance_sheet_data.dart';

enum TransactionType { Income, Expense, Contra }

class TransactionReportPage extends StatefulWidget {
  const TransactionReportPage({super.key});

  @override
  State<TransactionReportPage> createState() => _TransactionReportPageState();
}

class _TransactionReportPageState extends State<TransactionReportPage> {
  bool isFirst = true;
  List<BalanceSheetData> balanceSheetList = [];

  @override
  void didChangeDependencies() {
    if (isFirst) {
      getBalanceSheet();
    }
    super.didChangeDependencies();
  }

  void getBalanceSheet() async {
    var provider = Provider.of<AppDataProvider>(context, listen: false);
    final response = await provider.getBalanceSheet();
    if (provider.backTransList) {
      if (response != null) {
        balanceSheetList = response.data!;
      } else {
        balanceSheetList.clear();
      }
    }
    debugPrint('balanceSheetResponse: $response');
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: const Text('Balance Sheet'),
        foregroundColor: Colors.white,
      ),
      body: Consumer<AppDataProvider>(
        builder: (context, data, child) {
          return data.transListLoading
              ? const LoadingWidget()
              : Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16.0, vertical: 8.0),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.blueAccent.shade400,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Text(
                                'Income',
                                style: customTxtStyle(
                                  fontColor: Colors.white,
                                ),
                              ),
                              Text(
                                calculate(
                                    TransactionType.Income, balanceSheetList),
                                style: customTxtStyle(
                                  fontColor: Colors.white,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Text(
                                'Expense',
                                style: customTxtStyle(
                                  fontColor: Colors.white,
                                ),
                              ),
                              Text(
                                calculate(
                                    TransactionType.Expense, balanceSheetList),
                                style: customTxtStyle(
                                  fontColor: Colors.white,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Text(
                                'Contra',
                                style: customTxtStyle(
                                  fontColor: Colors.white,
                                ),
                              ),
                              Text(
                                calculate(
                                    TransactionType.Contra, balanceSheetList),
                                style: customTxtStyle(
                                  fontColor: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: balanceSheetList.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 16.0, vertical: 4),
                            child: Card(
                              color: Colors.white,
                              elevation: 3,
                              child: ListTile(
                                title: Text('${balanceSheetList[index].type}'),
                                subtitle: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                        "Credit Head: ${balanceSheetList[index].creditName}"),
                                    Text(
                                        "Debit Head: ${balanceSheetList[index].debitName}"),
                                    Text(
                                        "Remarks: ${balanceSheetList[index].remarks}"),
                                    Text(
                                        "Amount: ${balanceSheetList[index].amount}"),
                                    Text(
                                        'Date: ${balanceSheetList[index].transDate!.split("T").first}'),
                                  ],
                                ),
                                leading: Container(
                                  width: 20,
                                  height: 20,
                                  decoration: BoxDecoration(
                                    color: setColorWIthTransactionType(index),
                                    shape: BoxShape.circle,
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                );
        },
      ),
    );
  }

  TextStyle customTxtStyle({Color fontColor = Colors.black}) {
    return TextStyle(
      color: fontColor,
      fontWeight: FontWeight.bold,
      fontSize: 18,
    );
  }

  MaterialColor setColorWIthTransactionType(int index) {
    return balanceSheetList[index].type == TransactionType.Income.name
        ? Colors.green
        : balanceSheetList[index].type == TransactionType.Expense.name
            ? Colors.red
            : Colors.blue;
  }

  String calculate(
      TransactionType type, List<BalanceSheetData> balanceSheetList) {
    double sum = 0.0;
    for (BalanceSheetData data in balanceSheetList) {
      if (data.type == type.name) {
        sum += data.amount!;
      }
    }
    return '$sum';
  }
}
