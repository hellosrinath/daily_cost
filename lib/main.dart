import 'package:daily_cost/pages/balance_sheet_page.dart';
import 'package:daily_cost/pages/dashboard.dart';
import 'package:daily_cost/pages/head_page.dart';
import 'package:daily_cost/pages/login_page.dart';
import 'package:daily_cost/pages/login_page_two.dart';
import 'package:daily_cost/pages/my_bottom_bar.dart';
import 'package:daily_cost/pages/transaction_page.dart';
import 'package:daily_cost/pages/transaction_report_page.dart';
import 'package:daily_cost/providers/app_data_provider.dart';
import 'package:daily_cost/providers/app_login_provider.dart';
import 'package:daily_cost/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => AppDataProvider()),
        ChangeNotifierProvider(create: (context) => AppLoginProvider()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: routeNameLogin,
      routes: {
        routeNameMyBottomBar: (context) => const MyBottomBar(),
        routeNameDashboard: (context) => const Dashboard(),
        routeNameHeadPage: (context) => const HeadPage(),
        routeNameBalanceSheet: (context) => const BalanceSheetPage(),
        routeNameLogin: (context) => const LoginPageTwo(),
        routeNameTransaction: (context) => const TransactionPage(),
        routeNameTransactionReport: (context) => const TransactionReportPage()
      },
      home: const MyBottomBar(),
    );
  }
}
