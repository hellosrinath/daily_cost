// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AuthResponseModelImpl _$$AuthResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$AuthResponseModelImpl(
      user: User.fromJson(json['user'] as Map<String, dynamic>),
      isAuthorized: json['isAuthorized'] as bool,
      token: json['token'] as String,
    );

Map<String, dynamic> _$$AuthResponseModelImplToJson(
        _$AuthResponseModelImpl instance) =>
    <String, dynamic>{
      'user': instance.user,
      'isAuthorized': instance.isAuthorized,
      'token': instance.token,
    };
