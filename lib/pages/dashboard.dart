import 'package:daily_cost/customwidgets/loading_widget.dart';
import 'package:daily_cost/providers/app_data_provider.dart';
import 'package:daily_cost/utils/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';
import '../customwidgets/transaction_item.dart';
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
    var provider = Provider.of<AppDataProvider>(context, listen: false);

    final response = await provider.getPeriodicTransaction(fromDate, toDate);
    setState(() {});
    if (provider.backTransList) {
      if (response != null) {
        transList = response.data;
      } else {
        transList.clear();
      }
    }

    debugPrint('periodicTransaction: ${response?.data.length}');
  }

  void _onSelectionChanged(DateRangePickerSelectionChangedArgs args) {
    setState(() {
      if (args.value is PickerDateRange) {
        fromDate = DateFormat('yyyy-MM-dd').format(args.value.startDate);
        toDate = DateFormat('yyyy-MM-dd')
            .format(args.value.endDate ?? args.value.startDate);
        getPeriodicTransaction(fromDate, toDate);
        var _range =
            '${DateFormat('yyyy-MM-dd').format(args.value.startDate)} -'
            // ignore: lines_longer_than_80_chars
            ' ${DateFormat('yyyy-MM-dd').format(args.value.endDate ?? args.value.startDate)}';
        debugPrint('dateRange: $_range');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        foregroundColor: Colors.white,
        title: const Text(
          'Transactions',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Consumer<AppDataProvider>(
        builder: (context, data, child) {
          return data.transListLoading
              ? const LoadingWidget()
              : Column(
                  children: [
                    const SizedBox(height: 8),
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
                          onPressed: _showDropdown,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                fromDate,
                                style: const TextStyle(
                                  fontSize: 18,
                                ),
                              ),
                              const SizedBox(width: 8),
                              const Icon(Icons.calendar_month),
                              const SizedBox(width: 8),
                              Text(
                                toDate,
                                style: const TextStyle(
                                  fontSize: 18,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: transList.isEmpty
                          ? const Center(child: Text('No Data Found'))
                          : ListView.builder(
                              shrinkWrap: true,
                              itemCount: transList.length,
                              itemBuilder: (BuildContext context, int index) {
                                return TransactionItems(
                                    transList: transList[index]);
                              },
                            ),
                    ),
                  ],
                );
        },
      ),
    );
  }

  void _showDropdown() {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Padding(
          padding: const EdgeInsets.all(16.0),
          child: Positioned(
            left: 0,
            top: 80,
            right: 0,
            bottom: 0,
            child: SfDateRangePicker(
              onSelectionChanged: _onSelectionChanged,
              selectionMode: DateRangePickerSelectionMode.range,
              initialSelectedRange: PickerDateRange(
                DateTime.now().subtract(const Duration(days: 7)),
                DateTime.now(),
              ),
            ),
          ),
        );
      },
    );
  }
}
