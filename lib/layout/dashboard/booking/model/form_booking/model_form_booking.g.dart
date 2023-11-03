// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model_form_booking.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ModelFormBookingImpl _$$ModelFormBookingImplFromJson(
        Map<String, dynamic> json) =>
    _$ModelFormBookingImpl(
      formTitle: json['formTitle'] as String,
      formDescription: json['formDescription'] as String,
      form: (json['form'] as List<dynamic>)
          .map(
              (e) => ModelFormBookingDetail.fromJson(e as Map<String, dynamic>))
          .toList(),
      useModal: json['useModal'] as bool?,
    );

Map<String, dynamic> _$$ModelFormBookingImplToJson(
        _$ModelFormBookingImpl instance) =>
    <String, dynamic>{
      'formTitle': instance.formTitle,
      'formDescription': instance.formDescription,
      'form': instance.form,
      'useModal': instance.useModal,
    };
