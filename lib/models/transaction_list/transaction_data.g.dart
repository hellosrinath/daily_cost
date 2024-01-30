// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TransactionDataImpl _$$TransactionDataImplFromJson(
        Map<String, dynamic> json) =>
    _$TransactionDataImpl(
      compId: json['compId'] as int,
      transDate: json['transDate'] as String,
      transNo: json['transNo'] as int,
      creditHead: json['creditHead'] as String,
      creditCode: json['creditCode'] as int,
      debitHead: json['debitHead'] as String,
      debitCode: json['debitCode'] as int,
      amount: (json['amount'] as num).toDouble(),
      remarks: json['remarks'] as String,
      isActive: json['isActive'] as bool,
    );

Map<String, dynamic> _$$TransactionDataImplToJson(
        _$TransactionDataImpl instance) =>
    <String, dynamic>{
      'compId': instance.compId,
      'transDate': instance.transDate,
      'transNo': instance.transNo,
      'creditHead': instance.creditHead,
      'creditCode': instance.creditCode,
      'debitHead': instance.debitHead,
      'debitCode': instance.debitCode,
      'amount': instance.amount,
      'remarks': instance.remarks,
      'isActive': instance.isActive,
    };
