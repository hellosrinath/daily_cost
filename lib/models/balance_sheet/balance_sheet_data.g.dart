// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'balance_sheet_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BalanceSheetDataImpl _$$BalanceSheetDataImplFromJson(
        Map<String, dynamic> json) =>
    _$BalanceSheetDataImpl(
      type: json['type'] as String?,
      transDate: json['transDate'] as String?,
      transNo: json['transNo'] as int?,
      creditName: json['creditName'] as String?,
      debitName: json['debitName'] as String?,
      amount: (json['amount'] as num?)?.toDouble(),
      remarks: json['remarks'] as String?,
    );

Map<String, dynamic> _$$BalanceSheetDataImplToJson(
        _$BalanceSheetDataImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
      'transDate': instance.transDate,
      'transNo': instance.transNo,
      'creditName': instance.creditName,
      'debitName': instance.debitName,
      'amount': instance.amount,
      'remarks': instance.remarks,
    };
