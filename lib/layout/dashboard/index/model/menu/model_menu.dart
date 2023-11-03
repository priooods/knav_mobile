import 'package:freezed_annotation/freezed_annotation.dart';
part 'model_menu.freezed.dart';
part 'model_menu.g.dart';

@freezed
class ModelMenu with _$ModelMenu {
  const factory ModelMenu({
    String? title,
    String? description,
    required String router,
    String? icon,
    required int id,
  }) = _ModelMenu;

  factory ModelMenu.fromJson(Map<String, Object?> json) =>
      _$ModelMenuFromJson(json);
}
