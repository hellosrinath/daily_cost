// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'head_create_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HeadCreateResponseModelImpl _$$HeadCreateResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$HeadCreateResponseModelImpl(
      status: json['status'] as bool,
      isAuthorized: json['isAuthorized'] as bool,
      message: json['message'] as String,
      messageType: json['messageType'] as String,
    );

Map<String, dynamic> _$$HeadCreateResponseModelImplToJson(
        _$HeadCreateResponseModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'isAuthorized': instance.isAuthorized,
      'message': instance.message,
      'messageType': instance.messageType,
    };
