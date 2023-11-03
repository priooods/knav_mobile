import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:knavm/layout/dashboard/index/model/booking_children/model_booking_children.dart';
part 'model_booking.freezed.dart';
part 'model_booking.g.dart';

@freezed
class ModelBooking with _$ModelBooking {
  const factory ModelBooking({
    int? id,
    String? bookingNo,
    String? vesselName,
    String? status,
    List<ModelBookingChildren>? other
  }) = _ModelBooking;

  factory ModelBooking.fromJson(Map<String, Object?> json) =>
      _$ModelBookingFromJson(json);
}
