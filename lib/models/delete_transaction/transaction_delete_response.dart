import 'package:freezed_annotation/freezed_annotation.dart';

part 'transaction_delete_response.freezed.dart';

part 'transaction_delete_response.g.dart';

@unfreezed
class TransactionDeleteResponse with _$TransactionDeleteResponse {
  factory TransactionDeleteResponse({
    required bool status,
    required bool isAuthorized,
    required String message,
    required String messageType,
  }) = _TransactionDeleteResponse;

  factory TransactionDeleteResponse.fromJson(Map<String, dynamic> json) =>
      _$TransactionDeleteResponseFromJson(json);
}
