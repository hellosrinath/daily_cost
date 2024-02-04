// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_transaction_param.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DeleteTransactionParamImpl _$$DeleteTransactionParamImplFromJson(
        Map<String, dynamic> json) =>
    _$DeleteTransactionParamImpl(
      TransNo: json['TransNo'] as int,
      TransDate: json['TransDate'] as String,
      CreditCode: json['CreditCode'] as int,
      DebitCode: json['DebitCode'] as int,
      Amount: (json['Amount'] as num).toDouble(),
      Remarks: json['Remarks'] as String,
      CreatedBy: json['CreatedBy'] as int,
      CreatedIp: json['CreatedIp'] as String? ?? '192.168.1.1',
      UpdatedBy: json['UpdatedBy'] as int? ?? 0,
      UpdatedIp: json['UpdatedIp'] as String? ?? '192.169.1.1',
    );

Map<String, dynamic> _$$DeleteTransactionParamImplToJson(
        _$DeleteTransactionParamImpl instance) =>
    <String, dynamic>{
      'TransNo': instance.TransNo,
      'TransDate': instance.TransDate,
      'CreditCode': instance.CreditCode,
      'DebitCode': instance.DebitCode,
      'Amount': instance.Amount,
      'Remarks': instance.Remarks,
      'CreatedBy': instance.CreatedBy,
      'CreatedIp': instance.CreatedIp,
      'UpdatedBy': instance.UpdatedBy,
      'UpdatedIp': instance.UpdatedIp,
    };
