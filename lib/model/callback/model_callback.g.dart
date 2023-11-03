// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model_callback.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ModelCallbackImpl _$$ModelCallbackImplFromJson(Map<String, dynamic> json) =>
    _$ModelCallbackImpl(
      notification: json['notification'],
      message: json['message'] as String?,
      code: json['code'] as int?,
      data: json['data'],
    );

Map<String, dynamic> _$$ModelCallbackImplToJson(_$ModelCallbackImpl instance) =>
    <String, dynamic>{
      'notification': instance.notification,
      'message': instance.message,
      'code': instance.code,
      'data': instance.data,
    };
