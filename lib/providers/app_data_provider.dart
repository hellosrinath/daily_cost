import 'package:daily_cost/datasource/app_data_source.dart';
import 'package:daily_cost/datasource/data_source.dart';
import 'package:daily_cost/models/delete_transaction/delete_transaction_param.dart';
import 'package:daily_cost/models/delete_transaction/transaction_delete_response.dart';
import 'package:daily_cost/models/head/head_create_model.dart';
import 'package:daily_cost/models/login/app_user.dart';
import 'package:daily_cost/models/transaction/transaction_create_param.dart';
import 'package:flutter/material.dart';

import '../models/balance_sheet/balance_sheet_response.dart';
import '../models/head/head_create_response_model.dart';
import '../models/head/head_list_data.dart';
import '../models/transaction/transaction_response.dart';
import '../models/transaction_list/transaction_list_response.dart';

class AppDataProvider extends ChangeNotifier {
  final DataSource _dataSource = AppDataSource();

  Future<HeadCreateResponseModel?> createHead(
      HeadCreateModel headCreateModel) async {
    final response = await _dataSource.createHead(headCreateModel);
    if (response == null) return null;
    return response;
  }

  Future<HeadListData?> getHeadList() async {
    final response = await _dataSource.gettingHeadList();
    if (response == null) return null;
    return response;
  }

  Future<TransactionResponse?> createTransaction(
      TransactionCreateParam transactionCreateParam) async {
    final response =
        await _dataSource.createTransaction(transactionCreateParam);
    if (response == null) return null;
    return response;
  }

  // item delete
  bool transListLoading = false;
  bool backTransList = false;

  Future<TransactionDeleteResponse?> deleteTransaction(
      DeleteTransactionParam deleteTransactionParam) async {
    transListLoading = true;
    notifyListeners();
    final response =
        await _dataSource.deleteTransaction(deleteTransactionParam);
    if (response == null) return null;
    backTransList = true;
    transListLoading = false;
    notifyListeners();
    return response;
  }

  Future<TransactionListResponse?> getPeriodicTransaction(
      String fromDate, String toDate) async {
    transListLoading = true;
    notifyListeners();

    final response = await _dataSource.getPeriodicTransaction(fromDate, toDate);

    backTransList = true;
    transListLoading = false;
    notifyListeners();
    return response;
  }

  Future<BalanceSheetResponse?> getBalanceSheet() async {
    transListLoading = true;
    notifyListeners();
    final response = await _dataSource.getBalanceSheet();
    if (response == null) return null;
    transListLoading = false;
    backTransList = true;
    notifyListeners();
    return response;
  }
}
