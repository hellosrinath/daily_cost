// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TransactionResponseImpl _$$TransactionResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$TransactionResponseImpl(
      status: json['status'] as bool,
      isAuthorized: json['isAuthorized'] as bool,
      message: json['message'] as String,
      messageType: json['messageType'] as String,
    );

Map<String, dynamic> _$$TransactionResponseImplToJson(
        _$TransactionResponseImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'isAuthorized': instance.isAuthorized,
      'message': instance.message,
      'messageType': instance.messageType,
    };
