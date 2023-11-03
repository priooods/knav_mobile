import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:knavm/layout/dashboard/booking/model/form_booking_detail/model_form_booking_detail.dart';
part 'model_form_booking.freezed.dart';
part 'model_form_booking.g.dart';

@freezed
class ModelFormBooking with _$ModelFormBooking {
  const factory ModelFormBooking({
    required String formTitle,
    required String formDescription,
    required List<ModelFormBookingDetail> form,
    bool? useModal,
  }) = _ModelFormBooking;

  factory ModelFormBooking.fromJson(Map<String, Object?> json) =>
      _$ModelFormBookingFromJson(json);
}
