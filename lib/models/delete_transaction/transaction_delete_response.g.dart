// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_delete_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TransactionDeleteResponseImpl _$$TransactionDeleteResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$TransactionDeleteResponseImpl(
      status: json['status'] as bool,
      isAuthorized: json['isAuthorized'] as bool,
      message: json['message'] as String,
      messageType: json['messageType'] as String,
    );

Map<String, dynamic> _$$TransactionDeleteResponseImplToJson(
        _$TransactionDeleteResponseImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'isAuthorized': instance.isAuthorized,
      'message': instance.message,
      'messageType': instance.messageType,
    };
