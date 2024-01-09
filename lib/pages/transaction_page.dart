import 'package:daily_cost/customwidgets/my_radio_button.dart';
import 'package:flutter/material.dart';



class TransactionPage extends StatefulWidget {
  const TransactionPage({super.key});

  @override
  State<TransactionPage> createState() => _TransactionPageState();
}

class _TransactionPageState extends State<TransactionPage> {
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
              labelColor: Colors.blueAccent,
            ),
            title: const Text('Create Transaction and Head'),
          ),
          body: TabBarView(
            children: [
              Column(
                children: [
                  const SizedBox(height: 20.0),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30.0),
                    child: TextFormField(
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
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        DropdownMenu(
                          label: const Text('Credit Head'),
                          initialSelection: creditList.first,
                          onSelected: (String? value) {
                            setState(() {
                              dropDownValue = value!;
                            });
                          },
                          dropdownMenuEntries: creditList
                              .map<DropdownMenuEntry<String>>((String value) {
                            return DropdownMenuEntry<String>(
                                value: value, label: value);
                          }).toList(),
                        ),
                        DropdownMenu(
                          label: const Text('Debit Head'),
                          initialSelection: creditList.first,
                          onSelected: (String? value) {
                            setState(() {
                              dropDownValue = value!;
                            });
                          },
                          dropdownMenuEntries: creditList
                              .map<DropdownMenuEntry<String>>((String value) {
                            return DropdownMenuEntry<String>(
                                value: value, label: value);
                          }).toList(),
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
                        onPressed: () {},
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
              Column(
                children: [
                  const SizedBox(height: 20.0),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30.0),
                    child: TextFormField(
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
                 const MyRadioButton(),
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
                        onPressed: () {},
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
    );
  }
}
