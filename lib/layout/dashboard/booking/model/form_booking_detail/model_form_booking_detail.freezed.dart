// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'model_form_booking_detail.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ModelFormBookingDetail _$ModelFormBookingDetailFromJson(
    Map<String, dynamic> json) {
  return _ModelFormBookingDetail.fromJson(json);
}

/// @nodoc
mixin _$ModelFormBookingDetail {
  String get label => throw _privateConstructorUsedError;
  String get placeholder => throw _privateConstructorUsedError;
  int get formType => throw _privateConstructorUsedError;
  dynamic get value => throw _privateConstructorUsedError;
  dynamic get other => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ModelFormBookingDetailCopyWith<ModelFormBookingDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ModelFormBookingDetailCopyWith<$Res> {
  factory $ModelFormBookingDetailCopyWith(ModelFormBookingDetail value,
          $Res Function(ModelFormBookingDetail) then) =
      _$ModelFormBookingDetailCopyWithImpl<$Res, ModelFormBookingDetail>;
  @useResult
  $Res call(
      {String label,
      String placeholder,
      int formType,
      dynamic value,
      dynamic other});
}

/// @nodoc
class _$ModelFormBookingDetailCopyWithImpl<$Res,
        $Val extends ModelFormBookingDetail>
    implements $ModelFormBookingDetailCopyWith<$Res> {
  _$ModelFormBookingDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = null,
    Object? placeholder = null,
    Object? formType = null,
    Object? value = freezed,
    Object? other = freezed,
  }) {
    return _then(_value.copyWith(
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      placeholder: null == placeholder
          ? _value.placeholder
          : placeholder // ignore: cast_nullable_to_non_nullable
              as String,
      formType: null == formType
          ? _value.formType
          : formType // ignore: cast_nullable_to_non_nullable
              as int,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as dynamic,
      other: freezed == other
          ? _value.other
          : other // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ModelFormBookingDetailImplCopyWith<$Res>
    implements $ModelFormBookingDetailCopyWith<$Res> {
  factory _$$ModelFormBookingDetailImplCopyWith(
          _$ModelFormBookingDetailImpl value,
          $Res Function(_$ModelFormBookingDetailImpl) then) =
      __$$ModelFormBookingDetailImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String label,
      String placeholder,
      int formType,
      dynamic value,
      dynamic other});
}

/// @nodoc
class __$$ModelFormBookingDetailImplCopyWithImpl<$Res>
    extends _$ModelFormBookingDetailCopyWithImpl<$Res,
        _$ModelFormBookingDetailImpl>
    implements _$$ModelFormBookingDetailImplCopyWith<$Res> {
  __$$ModelFormBookingDetailImplCopyWithImpl(
      _$ModelFormBookingDetailImpl _value,
      $Res Function(_$ModelFormBookingDetailImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = null,
    Object? placeholder = null,
    Object? formType = null,
    Object? value = freezed,
    Object? other = freezed,
  }) {
    return _then(_$ModelFormBookingDetailImpl(
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      placeholder: null == placeholder
          ? _value.placeholder
          : placeholder // ignore: cast_nullable_to_non_nullable
              as String,
      formType: null == formType
          ? _value.formType
          : formType // ignore: cast_nullable_to_non_nullable
              as int,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as dynamic,
      other: freezed == other
          ? _value.other
          : other // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ModelFormBookingDetailImpl implements _ModelFormBookingDetail {
  const _$ModelFormBookingDetailImpl(
      {required this.label,
      required this.placeholder,
      required this.formType,
      this.value,
      this.other});

  factory _$ModelFormBookingDetailImpl.fromJson(Map<String, dynamic> json) =>
      _$$ModelFormBookingDetailImplFromJson(json);

  @override
  final String label;
  @override
  final String placeholder;
  @override
  final int formType;
  @override
  final dynamic value;
  @override
  final dynamic other;

  @override
  String toString() {
    return 'ModelFormBookingDetail(label: $label, placeholder: $placeholder, formType: $formType, value: $value, other: $other)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ModelFormBookingDetailImpl &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.placeholder, placeholder) ||
                other.placeholder == placeholder) &&
            (identical(other.formType, formType) ||
                other.formType == formType) &&
            const DeepCollectionEquality().equals(other.value, value) &&
            const DeepCollectionEquality().equals(other.other, this.other));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      label,
      placeholder,
      formType,
      const DeepCollectionEquality().hash(value),
      const DeepCollectionEquality().hash(other));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ModelFormBookingDetailImplCopyWith<_$ModelFormBookingDetailImpl>
      get copyWith => __$$ModelFormBookingDetailImplCopyWithImpl<
          _$ModelFormBookingDetailImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ModelFormBookingDetailImplToJson(
      this,
    );
  }
}

abstract class _ModelFormBookingDetail implements ModelFormBookingDetail {
  const factory _ModelFormBookingDetail(
      {required final String label,
      required final String placeholder,
      required final int formType,
      final dynamic value,
      final dynamic other}) = _$ModelFormBookingDetailImpl;

  factory _ModelFormBookingDetail.fromJson(Map<String, dynamic> json) =
      _$ModelFormBookingDetailImpl.fromJson;

  @override
  String get label;
  @override
  String get placeholder;
  @override
  int get formType;
  @override
  dynamic get value;
  @override
  dynamic get other;
  @override
  @JsonKey(ignore: true)
  _$$ModelFormBookingDetailImplCopyWith<_$ModelFormBookingDetailImpl>
      get copyWith => throw _privateConstructorUsedError;
}
