import 'package:freezed_annotation/freezed_annotation.dart';

part 'transaction_create_param.freezed.dart';

part 'transaction_create_param.g.dart';

@unfreezed
class TransactionCreateParam with _$TransactionCreateParam {
  factory TransactionCreateParam({
    required String TransDate,
    required int CreditCode,
    required int DebitCode,
    required int Amount,
    required String Remarks,
    required int CreatedBy,
    @Default('192.168.1.1') String CreatedIp,
    @Default(0) int UpdatedBy,
    @Default('192.169.1.1') String UpdatedIp,
  }) = _TransactionCreateParam;

  factory TransactionCreateParam.fromJson(Map<String, dynamic> json) =>
      _$TransactionCreateParamFromJson(json);
}

//{
//     "TransDate":"2021-05-25",
//     "CreditCode":1011001,
//     "DebitCode":1012001,
//     "Amount":100,
//     "Remarks":"test",
//     "CreatedBy":10101,
//     "CreatedIp":"192.168.0.1",
//     "UpdatedBy":0,
//     "UpdatedIp":""
// }
