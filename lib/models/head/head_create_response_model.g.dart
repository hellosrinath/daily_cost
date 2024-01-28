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
      data: HeadData.fromJson(json['data'] as Map<String, dynamic>),
      CreatedIp: json['CreatedIp'] as String? ?? '192.168.1.1',
      UpdatedBy: json['UpdatedBy'] as int? ?? 0,
      UpdatedIp: json['UpdatedIp'] as String? ?? '192.169.1.1',
    );

Map<String, dynamic> _$$HeadCreateResponseModelImplToJson(
        _$HeadCreateResponseModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'isAuthorized': instance.isAuthorized,
      'message': instance.message,
      'messageType': instance.messageType,
      'data': instance.data,
      'CreatedIp': instance.CreatedIp,
      'UpdatedBy': instance.UpdatedBy,
      'UpdatedIp': instance.UpdatedIp,
    };
