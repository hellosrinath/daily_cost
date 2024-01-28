// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'head_list_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HeadListDataImpl _$$HeadListDataImplFromJson(Map<String, dynamic> json) =>
    _$HeadListDataImpl(
      status: json['status'] as bool,
      isAuthorized: json['isAuthorized'] as bool,
      message: json['message'] as String,
      messageType: json['messageType'] as String,
      data: (json['data'] as List<dynamic>)
          .map((e) => HeadItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$HeadListDataImplToJson(_$HeadListDataImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'isAuthorized': instance.isAuthorized,
      'message': instance.message,
      'messageType': instance.messageType,
      'data': instance.data,
    };
