import 'package:daily_cost/pages/balance_sheet_page.dart';
import 'package:daily_cost/pages/dashboard.dart';
import 'package:daily_cost/pages/head_page.dart';
import 'package:daily_cost/pages/transaction_page.dart';
import 'package:daily_cost/pages/transaction_report_page.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class MyBottomBar extends StatefulWidget {
  const MyBottomBar({super.key});

  @override
  State<MyBottomBar> createState() => _MyBottomBarState();
}

class _MyBottomBarState extends State<MyBottomBar> {
  int _page = 0;
  final GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();

  final screen = [
    const Dashboard(),
    const HeadPage(),
    const TransactionPage(),
    const TransactionReportPage(),
    const BalanceSheetPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueAccent,
      child: SafeArea(
        top: false,
        child: ClipRRect(
          child: Scaffold(
            extendBody: true,
            bottomNavigationBar: Theme(
              data: Theme.of(context).copyWith(
                  iconTheme: const IconThemeData(color: Colors.white)),
              child: CurvedNavigationBar(
                key: _bottomNavigationKey,
                index: 0,
                height: 60.0,
                items: const <Widget>[
                  Icon(Icons.home_filled, size: 30),
                  Icon(Icons.category_rounded, size: 30),
                  Icon(Icons.add_box_rounded, size: 30),
                  Icon(Icons.account_balance, size: 30),
                  Icon(Icons.perm_identity_rounded, size: 30),
                ],
                color: Colors.blue,
                buttonBackgroundColor: Colors.blueAccent,
                backgroundColor: Colors.transparent,
                animationCurve: Curves.easeInOut,
                animationDuration: const Duration(milliseconds: 300),
                onTap: (index) {
                  setState(() {
                    _page = index;
                  });
                },
                letIndexChange: (index) => true,
              ),
            ),
            body: screen[_page],
          ),
        ),
      ),
    );
  }
}
