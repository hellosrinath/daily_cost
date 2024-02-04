// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'balance_sheet_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BalanceSheetResponseImpl _$$BalanceSheetResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$BalanceSheetResponseImpl(
      status: json['status'] as bool?,
      isAuthorized: json['isAuthorized'] as bool?,
      message: json['message'] as String?,
      messageType: json['messageType'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => BalanceSheetData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$BalanceSheetResponseImplToJson(
        _$BalanceSheetResponseImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'isAuthorized': instance.isAuthorized,
      'message': instance.message,
      'messageType': instance.messageType,
      'data': instance.data,
    };
