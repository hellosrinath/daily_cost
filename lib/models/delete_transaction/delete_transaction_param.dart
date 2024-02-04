import 'package:freezed_annotation/freezed_annotation.dart';

part 'delete_transaction_param.freezed.dart';

part 'delete_transaction_param.g.dart';

@unfreezed
class DeleteTransactionParam with _$DeleteTransactionParam {
  factory DeleteTransactionParam({
    required int TransNo,
    required String TransDate,
    required int CreditCode,
    required int DebitCode,
    required double Amount,
    required String Remarks,
    required int CreatedBy,
    @Default('192.168.1.1') String CreatedIp,
    @Default(0) int UpdatedBy,
    @Default('192.169.1.1') String UpdatedIp,
  }) = _DeleteTransactionParam;

  factory DeleteTransactionParam.fromJson(Map<String, dynamic> json) =>
      _$DeleteTransactionParamFromJson(json);
}

//{
//     "TransNo":2021052501,
//     "TransDate":"2021-05-25",
//     "CreditCode":101001,
//     "DebitCode":101003,
//     "Amount":500,
//     "Remarks":"test",
//     "CreatedBy":10101,
//     "CreatedIp":"192.168.0.1",
//     "UpdatedBy":0,
//     "UpdatedIp":""
// }
