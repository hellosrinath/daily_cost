import 'package:freezed_annotation/freezed_annotation.dart';

part 'transaction_response.freezed.dart';

part 'transaction_response.g.dart';

@unfreezed
class TransactionResponse with _$TransactionResponse {
  factory TransactionResponse({
    required bool status,
    required bool isAuthorized,
    required String message,
    required String messageType,
  }) = _TransactionResponse;

  factory TransactionResponse.fromJson(Map<String, dynamic> json) =>
      _$TransactionResponseFromJson(json);
}
//bool status;
//   bool isAuthorized;
//   String message;
//   String messageType;
//   Data data;
