import 'package:freezed_annotation/freezed_annotation.dart';

import 'balance_sheet_data.dart';

part 'balance_sheet_response.freezed.dart';

part 'balance_sheet_response.g.dart';

@unfreezed
class BalanceSheetResponse with _$BalanceSheetResponse {
  factory BalanceSheetResponse({
    required bool? status,
    required bool? isAuthorized,
    required String? message,
    required String? messageType,
    required List<BalanceSheetData>? data,
  }) = _BalanceSheetResponse;

  factory BalanceSheetResponse.fromJson(Map<String, dynamic> json) =>
      _$BalanceSheetResponseFromJson(json);
}

/*
 "status": true,
    "isAuthorized": true,
    "message": "Success, data find done!",
    "messageType": "Success",
* */
