import 'package:freezed_annotation/freezed_annotation.dart';
part 'model_select.freezed.dart';
part 'model_select.g.dart';

@freezed
class ModelSelect with _$ModelSelect {
  const factory ModelSelect({
    String? title,
    String? description,
    int? id,
  }) = _ModelSelect;

  factory ModelSelect.fromJson(Map<String, Object?> json) =>
      _$ModelSelectFromJson(json);
}
