// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model_form_booking_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ModelFormBookingDetailImpl _$$ModelFormBookingDetailImplFromJson(
        Map<String, dynamic> json) =>
    _$ModelFormBookingDetailImpl(
      label: json['label'] as String,
      placeholder: json['placeholder'] as String,
      formType: json['formType'] as int,
      value: json['value'],
      other: json['other'],
    );

Map<String, dynamic> _$$ModelFormBookingDetailImplToJson(
        _$ModelFormBookingDetailImpl instance) =>
    <String, dynamic>{
      'label': instance.label,
      'placeholder': instance.placeholder,
      'formType': instance.formType,
      'value': instance.value,
      'other': instance.other,
    };
