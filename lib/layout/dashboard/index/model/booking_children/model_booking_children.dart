import 'package:freezed_annotation/freezed_annotation.dart';
part 'model_booking_children.freezed.dart';
part 'model_booking_children.g.dart';

@freezed
class ModelBookingChildren with _$ModelBookingChildren {
  const factory ModelBookingChildren(
      {
      String? title,
      String? value}) = _ModelBookingChildren;

  factory ModelBookingChildren.fromJson(Map<String, Object?> json) =>
      _$ModelBookingChildrenFromJson(json);
}
