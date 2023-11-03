// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model_menu.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ModelMenuImpl _$$ModelMenuImplFromJson(Map<String, dynamic> json) =>
    _$ModelMenuImpl(
      title: json['title'] as String?,
      description: json['description'] as String?,
      router: json['router'] as String,
      icon: json['icon'] as String?,
      id: json['id'] as int,
    );

Map<String, dynamic> _$$ModelMenuImplToJson(_$ModelMenuImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'router': instance.router,
      'icon': instance.icon,
      'id': instance.id,
    };
