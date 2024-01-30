// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_list_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TransactionListResponseImpl _$$TransactionListResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$TransactionListResponseImpl(
      status: json['status'] as bool,
      isAuthorized: json['isAuthorized'] as bool,
      message: json['message'] as String,
      messageType: json['messageType'] as String,
      data: (json['data'] as List<dynamic>)
          .map((e) => TransactionData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$TransactionListResponseImplToJson(
        _$TransactionListResponseImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'isAuthorized': instance.isAuthorized,
      'message': instance.message,
      'messageType': instance.messageType,
      'data': instance.data,
    };
