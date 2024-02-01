import 'package:daily_cost/datasource/app_data_source.dart';
import 'package:daily_cost/datasource/data_source.dart';
import 'package:daily_cost/models/head/head_create_model.dart';
import 'package:daily_cost/models/login/app_user.dart';
import 'package:daily_cost/models/transaction/transaction_create_param.dart';
import 'package:flutter/material.dart';

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

  bool transListLoading = false;
  bool backTransList = false;

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
}
