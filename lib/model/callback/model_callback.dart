import 'package:freezed_annotation/freezed_annotation.dart';
part 'model_callback.freezed.dart';
part 'model_callback.g.dart';

@freezed
class ModelCallback with _$ModelCallback {
  const factory ModelCallback({
    dynamic notification,
    String? message,
    int? code,
    dynamic data
  }) = _ModelCallback;

  factory ModelCallback.fromJson(Map<String, Object?> json) =>
      _$ModelCallbackFromJson(json);
}
