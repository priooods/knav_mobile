// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'model_booking_children.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ModelBookingChildren _$ModelBookingChildrenFromJson(Map<String, dynamic> json) {
  return _ModelBookingChildren.fromJson(json);
}

/// @nodoc
mixin _$ModelBookingChildren {
  String? get title => throw _privateConstructorUsedError;
  String? get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ModelBookingChildrenCopyWith<ModelBookingChildren> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ModelBookingChildrenCopyWith<$Res> {
  factory $ModelBookingChildrenCopyWith(ModelBookingChildren value,
          $Res Function(ModelBookingChildren) then) =
      _$ModelBookingChildrenCopyWithImpl<$Res, ModelBookingChildren>;
  @useResult
  $Res call({String? title, String? value});
}

/// @nodoc
class _$ModelBookingChildrenCopyWithImpl<$Res,
        $Val extends ModelBookingChildren>
    implements $ModelBookingChildrenCopyWith<$Res> {
  _$ModelBookingChildrenCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ModelBookingChildrenImplCopyWith<$Res>
    implements $ModelBookingChildrenCopyWith<$Res> {
  factory _$$ModelBookingChildrenImplCopyWith(_$ModelBookingChildrenImpl value,
          $Res Function(_$ModelBookingChildrenImpl) then) =
      __$$ModelBookingChildrenImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? title, String? value});
}

/// @nodoc
class __$$ModelBookingChildrenImplCopyWithImpl<$Res>
    extends _$ModelBookingChildrenCopyWithImpl<$Res, _$ModelBookingChildrenImpl>
    implements _$$ModelBookingChildrenImplCopyWith<$Res> {
  __$$ModelBookingChildrenImplCopyWithImpl(_$ModelBookingChildrenImpl _value,
      $Res Function(_$ModelBookingChildrenImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? value = freezed,
  }) {
    return _then(_$ModelBookingChildrenImpl(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ModelBookingChildrenImpl implements _ModelBookingChildren {
  const _$ModelBookingChildrenImpl({this.title, this.value});

  factory _$ModelBookingChildrenImpl.fromJson(Map<String, dynamic> json) =>
      _$$ModelBookingChildrenImplFromJson(json);

  @override
  final String? title;
  @override
  final String? value;

  @override
  String toString() {
    return 'ModelBookingChildren(title: $title, value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ModelBookingChildrenImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, title, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ModelBookingChildrenImplCopyWith<_$ModelBookingChildrenImpl>
      get copyWith =>
          __$$ModelBookingChildrenImplCopyWithImpl<_$ModelBookingChildrenImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ModelBookingChildrenImplToJson(
      this,
    );
  }
}

abstract class _ModelBookingChildren implements ModelBookingChildren {
  const factory _ModelBookingChildren(
      {final String? title, final String? value}) = _$ModelBookingChildrenImpl;

  factory _ModelBookingChildren.fromJson(Map<String, dynamic> json) =
      _$ModelBookingChildrenImpl.fromJson;

  @override
  String? get title;
  @override
  String? get value;
  @override
  @JsonKey(ignore: true)
  _$$ModelBookingChildrenImplCopyWith<_$ModelBookingChildrenImpl>
      get copyWith => throw _privateConstructorUsedError;
}
