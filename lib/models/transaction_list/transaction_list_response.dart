import 'package:daily_cost/models/transaction_list/transaction_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'transaction_list_response.freezed.dart';

part 'transaction_list_response.g.dart';

@unfreezed
class TransactionListResponse with _$TransactionListResponse {
  factory TransactionListResponse({
    required bool status,
    required bool isAuthorized,
    required String message,
    required String messageType,
    required List<TransactionData> data,
  }) = _TransactionListResponse;

  factory TransactionListResponse.fromJson(Map<String, dynamic> json) =>
      _$TransactionListResponseFromJson(json);
}
