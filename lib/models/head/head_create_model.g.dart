// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'head_create_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HeadCreateModelImpl _$$HeadCreateModelImplFromJson(
        Map<String, dynamic> json) =>
    _$HeadCreateModelImpl(
      CompId: json['CompId'] as int,
      Type: json['Type'] as int,
      Name: json['Name'] as String,
      CreatedBy: json['CreatedBy'] as int,
      CreatedIp: json['CreatedIp'] as String? ?? '192.168.1.1',
      UpdatedBy: json['UpdatedBy'] as int? ?? 0,
      UpdatedIp: json['UpdatedIp'] as String? ?? '192.169.1.1',
    );

Map<String, dynamic> _$$HeadCreateModelImplToJson(
        _$HeadCreateModelImpl instance) =>
    <String, dynamic>{
      'CompId': instance.CompId,
      'Type': instance.Type,
      'Name': instance.Name,
      'CreatedBy': instance.CreatedBy,
      'CreatedIp': instance.CreatedIp,
      'UpdatedBy': instance.UpdatedBy,
      'UpdatedIp': instance.UpdatedIp,
    };
