import 'package:freezed_annotation/freezed_annotation.dart';
part 'model_form_booking_detail.freezed.dart';
part 'model_form_booking_detail.g.dart';

@freezed
class ModelFormBookingDetail with _$ModelFormBookingDetail {
  const factory ModelFormBookingDetail({
    required String label,
    required String placeholder,
    required int formType,
    dynamic value,
    dynamic other
  }) = _ModelFormBookingDetail;

  // FORM TYPE INPUT:
  // 1 = normal
  // 2 = password
  // 3 = number
  // 4 = textarea
  // 5 = select
  // 6 = checkbox

  factory ModelFormBookingDetail.fromJson(Map<String, Object?> json) =>
      _$ModelFormBookingDetailFromJson(json);
}
