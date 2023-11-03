// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'model_select.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ModelSelect _$ModelSelectFromJson(Map<String, dynamic> json) {
  return _ModelSelect.fromJson(json);
}

/// @nodoc
mixin _$ModelSelect {
  String? get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  int? get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ModelSelectCopyWith<ModelSelect> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ModelSelectCopyWith<$Res> {
  factory $ModelSelectCopyWith(
          ModelSelect value, $Res Function(ModelSelect) then) =
      _$ModelSelectCopyWithImpl<$Res, ModelSelect>;
  @useResult
  $Res call({String? title, String? description, int? id});
}

/// @nodoc
class _$ModelSelectCopyWithImpl<$Res, $Val extends ModelSelect>
    implements $ModelSelectCopyWith<$Res> {
  _$ModelSelectCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? description = freezed,
    Object? id = freezed,
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
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ModelSelectImplCopyWith<$Res>
    implements $ModelSelectCopyWith<$Res> {
  factory _$$ModelSelectImplCopyWith(
          _$ModelSelectImpl value, $Res Function(_$ModelSelectImpl) then) =
      __$$ModelSelectImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? title, String? description, int? id});
}

/// @nodoc
class __$$ModelSelectImplCopyWithImpl<$Res>
    extends _$ModelSelectCopyWithImpl<$Res, _$ModelSelectImpl>
    implements _$$ModelSelectImplCopyWith<$Res> {
  __$$ModelSelectImplCopyWithImpl(
      _$ModelSelectImpl _value, $Res Function(_$ModelSelectImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? description = freezed,
    Object? id = freezed,
  }) {
    return _then(_$ModelSelectImpl(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ModelSelectImpl implements _ModelSelect {
  const _$ModelSelectImpl({this.title, this.description, this.id});

  factory _$ModelSelectImpl.fromJson(Map<String, dynamic> json) =>
      _$$ModelSelectImplFromJson(json);

  @override
  final String? title;
  @override
  final String? description;
  @override
  final int? id;

  @override
  String toString() {
    return 'ModelSelect(title: $title, description: $description, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ModelSelectImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, title, description, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ModelSelectImplCopyWith<_$ModelSelectImpl> get copyWith =>
      __$$ModelSelectImplCopyWithImpl<_$ModelSelectImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ModelSelectImplToJson(
      this,
    );
  }
}

abstract class _ModelSelect implements ModelSelect {
  const factory _ModelSelect(
      {final String? title,
      final String? description,
      final int? id}) = _$ModelSelectImpl;

  factory _ModelSelect.fromJson(Map<String, dynamic> json) =
      _$ModelSelectImpl.fromJson;

  @override
  String? get title;
  @override
  String? get description;
  @override
  int? get id;
  @override
  @JsonKey(ignore: true)
  _$$ModelSelectImplCopyWith<_$ModelSelectImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
