import 'package:freezed_annotation/freezed_annotation.dart';

part 'transaction_data.freezed.dart';

part 'transaction_data.g.dart';

@unfreezed
class TransactionData with _$TransactionData {
  factory TransactionData({
    required int compId,
    required String transDate,
    required int transNo,
    required String creditHead,
    required int creditCode,
    required String debitHead,
    required int debitCode,
    required double amount,
    required String remarks,
    required bool isActive,
  }) = _TransactionData;

  factory TransactionData.fromJson(Map<String, dynamic> json) =>
      _$TransactionDataFromJson(json);
}
