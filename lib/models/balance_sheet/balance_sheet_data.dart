import 'package:freezed_annotation/freezed_annotation.dart';

part 'balance_sheet_data.freezed.dart';

part 'balance_sheet_data.g.dart';

@unfreezed
class BalanceSheetData with _$BalanceSheetData {
  factory BalanceSheetData({
    required String? type,
    required String? transDate,
    required int? transNo,
    required String? creditName,
    required String? debitName,
    required double? amount,
    required String? remarks,
  }) = _BalanceSheetData;

  factory BalanceSheetData.fromJson(Map<String, dynamic> json) =>
      _$BalanceSheetDataFromJson(json);
}
