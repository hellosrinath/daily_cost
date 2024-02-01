import 'package:flutter/material.dart';

import '../models/transaction_list/transaction_data.dart';

enum PopUpMenuType { edit, delete }

class TransactionItems extends StatelessWidget {
  const TransactionItems({
    super.key,
    required this.transList,
  });

  final TransactionData transList;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16.0,
        vertical: 8.0,
      ),
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        decoration: BoxDecoration(
          color: Colors.black12,
          shape: BoxShape.rectangle,
          border: Border.all(
            color: Colors.black26,
            width: 2,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const Icon(Icons.calendar_month),
                    const SizedBox(width: 8),
                    Text(
                      transList.transDate.split("T").first,
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
                Card(
                  shape: const CircleBorder(),
                  child: PopupMenuButton<PopUpMenuType>(
                    onSelected: (selectedMenu) {},
                    itemBuilder: (context) => [
                      const PopupMenuItem(
                        value: PopUpMenuType.edit,
                        child: Row(
                          children: [
                            Icon(Icons.edit, color: Colors.blue),
                            SizedBox(width: 8),
                            Text('Edit'),
                          ],
                        ),
                      ),
                      const PopupMenuItem(
                        value: PopUpMenuType.delete,
                        child: Row(
                          children: [
                            Icon(Icons.delete, color: Colors.red),
                            SizedBox(width: 8),
                            Text('Delete'),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                headDesign(transList.creditHead),
                headDesign(transList.debitHead),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                    child: Text(
                  'Remarks: ${transList.remarks}',
                  style: const TextStyle(
                    fontSize: 15,
                  ),
                )),
                Text(
                  'Amount: ${transList.amount}',
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Card headDesign(String headName) {
    return Card(
      elevation: 2,
      color: Colors.white,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8))),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          headName,
        ),
      ),
    );
  }
}
