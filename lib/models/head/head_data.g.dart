// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'head_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HeadDataImpl _$$HeadDataImplFromJson(Map<String, dynamic> json) =>
    _$HeadDataImpl(
      compId: json['compId'] as int,
      id: json['id'] as int,
      type: json['type'] as int,
      name: json['name'] as String,
      createdBy: json['createdBy'] as int,
    );

Map<String, dynamic> _$$HeadDataImplToJson(_$HeadDataImpl instance) =>
    <String, dynamic>{
      'compId': instance.compId,
      'id': instance.id,
      'type': instance.type,
      'name': instance.name,
      'createdBy': instance.createdBy,
    };
