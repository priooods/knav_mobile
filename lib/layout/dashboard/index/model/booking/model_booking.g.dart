// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model_booking.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ModelBookingImpl _$$ModelBookingImplFromJson(Map<String, dynamic> json) =>
    _$ModelBookingImpl(
      id: json['id'] as int?,
      bookingNo: json['bookingNo'] as String?,
      vesselName: json['vesselName'] as String?,
      status: json['status'] as String?,
      other: (json['other'] as List<dynamic>?)
          ?.map((e) => ModelBookingChildren.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ModelBookingImplToJson(_$ModelBookingImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'bookingNo': instance.bookingNo,
      'vesselName': instance.vesselName,
      'status': instance.status,
      'other': instance.other,
    };
