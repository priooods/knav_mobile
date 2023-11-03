// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'model_menu.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ModelMenu _$ModelMenuFromJson(Map<String, dynamic> json) {
  return _ModelMenu.fromJson(json);
}

/// @nodoc
mixin _$ModelMenu {
  String? get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String get router => throw _privateConstructorUsedError;
  String? get icon => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ModelMenuCopyWith<ModelMenu> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ModelMenuCopyWith<$Res> {
  factory $ModelMenuCopyWith(ModelMenu value, $Res Function(ModelMenu) then) =
      _$ModelMenuCopyWithImpl<$Res, ModelMenu>;
  @useResult
  $Res call(
      {String? title,
      String? description,
      String router,
      String? icon,
      int id});
}

/// @nodoc
class _$ModelMenuCopyWithImpl<$Res, $Val extends ModelMenu>
    implements $ModelMenuCopyWith<$Res> {
  _$ModelMenuCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? description = freezed,
    Object? router = null,
    Object? icon = freezed,
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      router: null == router
          ? _value.router
          : router // ignore: cast_nullable_to_non_nullable
              as String,
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String?,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ModelMenuImplCopyWith<$Res>
    implements $ModelMenuCopyWith<$Res> {
  factory _$$ModelMenuImplCopyWith(
          _$ModelMenuImpl value, $Res Function(_$ModelMenuImpl) then) =
      __$$ModelMenuImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? title,
      String? description,
      String router,
      String? icon,
      int id});
}

/// @nodoc
class __$$ModelMenuImplCopyWithImpl<$Res>
    extends _$ModelMenuCopyWithImpl<$Res, _$ModelMenuImpl>
    implements _$$ModelMenuImplCopyWith<$Res> {
  __$$ModelMenuImplCopyWithImpl(
      _$ModelMenuImpl _value, $Res Function(_$ModelMenuImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? description = freezed,
    Object? router = null,
    Object? icon = freezed,
    Object? id = null,
  }) {
    return _then(_$ModelMenuImpl(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      router: null == router
          ? _value.router
          : router // ignore: cast_nullable_to_non_nullable
              as String,
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String?,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ModelMenuImpl implements _ModelMenu {
  const _$ModelMenuImpl(
      {this.title,
      this.description,
      required this.router,
      this.icon,
      required this.id});

  factory _$ModelMenuImpl.fromJson(Map<String, dynamic> json) =>
      _$$ModelMenuImplFromJson(json);

  @override
  final String? title;
  @override
  final String? description;
  @override
  final String router;
  @override
  final String? icon;
  @override
  final int id;

  @override
  String toString() {
    return 'ModelMenu(title: $title, description: $description, router: $router, icon: $icon, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ModelMenuImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.router, router) || other.router == router) &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, title, description, router, icon, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ModelMenuImplCopyWith<_$ModelMenuImpl> get copyWith =>
      __$$ModelMenuImplCopyWithImpl<_$ModelMenuImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ModelMenuImplToJson(
      this,
    );
  }
}

abstract class _ModelMenu implements ModelMenu {
  const factory _ModelMenu(
      {final String? title,
      final String? description,
      required final String router,
      final String? icon,
      required final int id}) = _$ModelMenuImpl;

  factory _ModelMenu.fromJson(Map<String, dynamic> json) =
      _$ModelMenuImpl.fromJson;

  @override
  String? get title;
  @override
  String? get description;
  @override
  String get router;
  @override
  String? get icon;
  @override
  int get id;
  @override
  @JsonKey(ignore: true)
  _$$ModelMenuImplCopyWith<_$ModelMenuImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
