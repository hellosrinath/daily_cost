import 'package:daily_cost/models/delete_transaction/delete_transaction_param.dart';
import 'package:daily_cost/models/head/head_create_model.dart';
import 'package:daily_cost/models/head/head_create_response_model.dart';
import 'package:daily_cost/models/login/app_user.dart';
import 'package:daily_cost/models/transaction/transaction_create_param.dart';

import '../models/balance_sheet/balance_sheet_response.dart';
import '../models/delete_transaction/transaction_delete_response.dart';
import '../models/head/head_list_data.dart';
import '../models/login/auth_response_model.dart';
import '../models/transaction/transaction_response.dart';
import '../models/transaction_list/transaction_list_response.dart';

abstract class DataSource {
  Future<AuthResponseModel?> login(AppUser user);

  Future<HeadCreateResponseModel?> createHead(HeadCreateModel headCreateModel);

  Future<HeadListData?> gettingHeadList();

  Future<TransactionResponse?> createTransaction(
      TransactionCreateParam transactionCreateParam);

  Future<TransactionListResponse?> getPeriodicTransaction(
      String fromDate, String toDate);

  Future<TransactionDeleteResponse?> deleteTransaction(
      DeleteTransactionParam deleteTransactionParam);

  Future<BalanceSheetResponse?> getBalanceSheet();
}
