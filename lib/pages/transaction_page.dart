import 'dart:ffi';

import 'package:daily_cost/customwidgets/my_radio_button.dart';
import 'package:daily_cost/models/head/head_create_model.dart';
import 'package:daily_cost/models/transaction/transaction_create_param.dart';
import 'package:daily_cost/providers/app_data_provider.dart';
import 'package:daily_cost/utils/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/head/head_item.dart';

class TransactionPage extends StatefulWidget {
  const TransactionPage({super.key});

  @override
  State<TransactionPage> createState() => _TransactionPageState();
}

class _TransactionPageState extends State<TransactionPage> {
  final formKey = GlobalKey<FormState>();
  final headTextEditingController = TextEditingController();
  var type = 1;

  final amountTextEditingController = TextEditingController();
  final descriptionTextEditingController = TextEditingController();

  bool isFirst = true;
  List<HeadItem> headItem = [];
  List<HeadItem> headItemCredit = [];
  List<HeadItem> headItemDebit = [];

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
      headItemCredit.clear();
      headItemDebit.clear();

      headItem = response.data;
      for (HeadItem item in headItem) {
        if (item.type == 1) headItemCredit.add(item);
        if (item.type == 2) headItemDebit.add(item);
      }
    }
    setState(() {});
    debugPrint('getHeads: ${headItem.length}');
  }

  String selectedCreditValue = '--Select--';
  int selectedCreditCode = 0;
  String selectedDebitValue = '--Select--';
  int selectedDebitCode = 0;

  @override
  Widget build(BuildContext context) {
    const List<String> creditList = <String>['One', 'Two', 'Three', 'Four'];
    String dropDownValue = creditList.first;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blueAccent,
            bottom: const TabBar(
              tabs: [
                Tab(icon: Icon(Icons.monetization_on_rounded, size: 40)),
                Tab(
                    icon: Icon(
                  Icons.category_outlined,
                  size: 40,
                )),
              ],
              dividerColor: Colors.blueAccent,
              indicatorColor: Colors.blueAccent,
              indicatorSize: TabBarIndicatorSize.tab,
              indicatorWeight: 6.0,
              labelColor: Colors.white,
            ),
            title: const Text('Create Transaction and Head'),
          ),
          body: Form(
            key: formKey,
            child: TabBarView(
              children: [
                SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const SizedBox(height: 20.0),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30.0),
                        child: TextFormField(
                          controller: amountTextEditingController,
                          decoration: const InputDecoration(
                              prefixIcon: Icon(Icons.monetization_on_outlined),
                              filled: true,
                              labelText: 'Amount'),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'This field must not be empty';
                            }
                            return null;
                          },
                        ),
                      ),
                      const SizedBox(height: 20.0),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30.0),
                        child: TextFormField(
                          controller: descriptionTextEditingController,
                          decoration: const InputDecoration(
                              prefixIcon: Icon(Icons.title),
                              filled: true,
                              labelText: 'Descriptions'),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'This field must not be empty';
                            }
                            return null;
                          },
                        ),
                      ),
                      const SizedBox(height: 20.0),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 30.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Text('Select Credit Head'),
                            ),
                            SizedBox(width: 30),
                            Expanded(
                              child: Text('Select Debit Head'),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Container(
                                color: const Color(0xFFEAE4EF),
                                child: TextButton(
                                  onPressed: () {
                                    _showDropdown(true);
                                  },
                                  child: Text(selectedCreditValue),
                                ),
                              ),
                            ),
                            const SizedBox(width: 30),
                            Expanded(
                              child: Container(
                                color: const Color(0xFFEAE4EF),
                                child: TextButton(
                                  onPressed: () {
                                    _showDropdown(false);
                                  },
                                  child: Text(selectedDebitValue),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 20.0),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30.0),
                        child: SizedBox(
                          width: double.infinity,
                          height: 50,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blueAccent,
                              foregroundColor: Colors.white,
                            ),
                            onPressed: () {
                              _saveTransactions(
                                  selectedCreditCode, selectedDebitCode);
                            },
                            child: const Text(
                              'Save',
                              style: TextStyle(
                                fontSize: 20.0,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                ///------------Head Create----------////
                Column(
                  children: [
                    const SizedBox(height: 20.0),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30.0),
                      child: TextFormField(
                        controller: headTextEditingController,
                        decoration: const InputDecoration(
                            prefixIcon: Icon(Icons.title),
                            filled: true,
                            labelText: 'Head Name'),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'This field must not be empty';
                          }
                          return null;
                        },
                      ),
                    ),
                    MyRadioButton(
                      onSubmit: (value) {
                        type = value;
                      },
                    ),
                    const SizedBox(height: 20.0),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30.0),
                      child: SizedBox(
                        width: double.infinity,
                        height: 50,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blueAccent,
                            foregroundColor: Colors.white,
                          ),
                          onPressed: _createHead,
                          child: const Text(
                            'Save',
                            style: TextStyle(
                              fontSize: 20.0,
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _showDropdown(bool isCreditHead) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return ListView.builder(
          itemCount:
              isCreditHead ? headItemCredit.length : headItemDebit.length,
          itemBuilder: (BuildContext context, int index) {
            return InkWell(
              onTap: () {
                _selectValue(
                    isCreditHead ? headItemCredit[index] : headItemDebit[index],
                    isCreditHead);
              },
              child: ListTile(
                title: Text(isCreditHead
                    ? headItemCredit[index].name
                    : headItemDebit[index].name),
                subtitle: const Text("test data"),
                leading: const Icon(Icons.currency_bitcoin),
              ),
            );
          },
        );
      },
    );
  }

  void _selectValue(HeadItem value, bool isCreditHead) {
    Navigator.pop(context); // Close the dropdown
    setState(() {
      if (isCreditHead) {
        selectedCreditValue = value.name;
        selectedCreditCode = value.id;
      } else {
        selectedDebitValue = value.name;
        selectedDebitCode = value.id;
      }
    });
  }

  void _saveTransactions(int creditCode, int debitCode) async {
    if (formKey.currentState!.validate()) {
      if (selectedCreditValue == "--Select--" ||
          selectedDebitValue == "--Select--") {
        showMessage(context, 'Select Credit/Debit Head');
      } else {
        try {
          final response =
              await Provider.of<AppDataProvider>(context, listen: false)
                  .createTransaction(TransactionCreateParam(
            TransDate: "2024-01-30",
            CreditCode: creditCode,
            DebitCode: debitCode,
            Amount: int.parse(amountTextEditingController.text),
            CreatedBy: await getUserId(),
            Remarks: descriptionTextEditingController.text,
          ));
          if (!context.mounted) return;
          if (response != null) {
            if (response.status && response.isAuthorized) {
              showMessage(context, response.message);
              amountTextEditingController.text = '';
              descriptionTextEditingController.text = '';
            } else {
              showMessage(context, response.message);
            }
          } else {
            showMessage(context, "Failed to create Transaction");
          }
        } catch (e) {
          showMessage(context, "Failed to create Transaction");
        }
      }
    }
  }

  void _createHead() async {
    if (formKey.currentState!.validate()) {
      final headName = headTextEditingController.text;
      final response =
          await Provider.of<AppDataProvider>(context, listen: false).createHead(
              HeadCreateModel(
                  CompId: await getCompanyId(),
                  Type: type,
                  Name: headName,
                  CreatedBy: await getUserId()));
      debugPrint("headCreateResponse: $response");
      if (!context.mounted) return;
      if (response != null) {
        if (response.status && response.isAuthorized) {
          showMessage(context, response.message);
          headTextEditingController.text = '';
        } else {
          showMessage(context, response.message);
        }
      } else {
        showMessage(context, "Failed to create head");
      }
    }
  }

  @override
  void dispose() {
    headTextEditingController.dispose();
    amountTextEditingController.dispose();
    descriptionTextEditingController.dispose();
    super.dispose();
  }
}
