// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'model_form_booking.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ModelFormBooking _$ModelFormBookingFromJson(Map<String, dynamic> json) {
  return _ModelFormBooking.fromJson(json);
}

/// @nodoc
mixin _$ModelFormBooking {
  String get formTitle => throw _privateConstructorUsedError;
  String get formDescription => throw _privateConstructorUsedError;
  List<ModelFormBookingDetail> get form => throw _privateConstructorUsedError;
  bool? get useModal => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ModelFormBookingCopyWith<ModelFormBooking> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ModelFormBookingCopyWith<$Res> {
  factory $ModelFormBookingCopyWith(
          ModelFormBooking value, $Res Function(ModelFormBooking) then) =
      _$ModelFormBookingCopyWithImpl<$Res, ModelFormBooking>;
  @useResult
  $Res call(
      {String formTitle,
      String formDescription,
      List<ModelFormBookingDetail> form,
      bool? useModal});
}

/// @nodoc
class _$ModelFormBookingCopyWithImpl<$Res, $Val extends ModelFormBooking>
    implements $ModelFormBookingCopyWith<$Res> {
  _$ModelFormBookingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? formTitle = null,
    Object? formDescription = null,
    Object? form = null,
    Object? useModal = freezed,
  }) {
    return _then(_value.copyWith(
      formTitle: null == formTitle
          ? _value.formTitle
          : formTitle // ignore: cast_nullable_to_non_nullable
              as String,
      formDescription: null == formDescription
          ? _value.formDescription
          : formDescription // ignore: cast_nullable_to_non_nullable
              as String,
      form: null == form
          ? _value.form
          : form // ignore: cast_nullable_to_non_nullable
              as List<ModelFormBookingDetail>,
      useModal: freezed == useModal
          ? _value.useModal
          : useModal // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ModelFormBookingImplCopyWith<$Res>
    implements $ModelFormBookingCopyWith<$Res> {
  factory _$$ModelFormBookingImplCopyWith(_$ModelFormBookingImpl value,
          $Res Function(_$ModelFormBookingImpl) then) =
      __$$ModelFormBookingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String formTitle,
      String formDescription,
      List<ModelFormBookingDetail> form,
      bool? useModal});
}

/// @nodoc
class __$$ModelFormBookingImplCopyWithImpl<$Res>
    extends _$ModelFormBookingCopyWithImpl<$Res, _$ModelFormBookingImpl>
    implements _$$ModelFormBookingImplCopyWith<$Res> {
  __$$ModelFormBookingImplCopyWithImpl(_$ModelFormBookingImpl _value,
      $Res Function(_$ModelFormBookingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? formTitle = null,
    Object? formDescription = null,
    Object? form = null,
    Object? useModal = freezed,
  }) {
    return _then(_$ModelFormBookingImpl(
      formTitle: null == formTitle
          ? _value.formTitle
          : formTitle // ignore: cast_nullable_to_non_nullable
              as String,
      formDescription: null == formDescription
          ? _value.formDescription
          : formDescription // ignore: cast_nullable_to_non_nullable
              as String,
      form: null == form
          ? _value._form
          : form // ignore: cast_nullable_to_non_nullable
              as List<ModelFormBookingDetail>,
      useModal: freezed == useModal
          ? _value.useModal
          : useModal // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ModelFormBookingImpl implements _ModelFormBooking {
  const _$ModelFormBookingImpl(
      {required this.formTitle,
      required this.formDescription,
      required final List<ModelFormBookingDetail> form,
      this.useModal})
      : _form = form;

  factory _$ModelFormBookingImpl.fromJson(Map<String, dynamic> json) =>
      _$$ModelFormBookingImplFromJson(json);

  @override
  final String formTitle;
  @override
  final String formDescription;
  final List<ModelFormBookingDetail> _form;
  @override
  List<ModelFormBookingDetail> get form {
    if (_form is EqualUnmodifiableListView) return _form;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_form);
  }

  @override
  final bool? useModal;

  @override
  String toString() {
    return 'ModelFormBooking(formTitle: $formTitle, formDescription: $formDescription, form: $form, useModal: $useModal)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ModelFormBookingImpl &&
            (identical(other.formTitle, formTitle) ||
                other.formTitle == formTitle) &&
            (identical(other.formDescription, formDescription) ||
                other.formDescription == formDescription) &&
            const DeepCollectionEquality().equals(other._form, _form) &&
            (identical(other.useModal, useModal) ||
                other.useModal == useModal));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, formTitle, formDescription,
      const DeepCollectionEquality().hash(_form), useModal);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ModelFormBookingImplCopyWith<_$ModelFormBookingImpl> get copyWith =>
      __$$ModelFormBookingImplCopyWithImpl<_$ModelFormBookingImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ModelFormBookingImplToJson(
      this,
    );
  }
}

abstract class _ModelFormBooking implements ModelFormBooking {
  const factory _ModelFormBooking(
      {required final String formTitle,
      required final String formDescription,
      required final List<ModelFormBookingDetail> form,
      final bool? useModal}) = _$ModelFormBookingImpl;

  factory _ModelFormBooking.fromJson(Map<String, dynamic> json) =
      _$ModelFormBookingImpl.fromJson;

  @override
  String get formTitle;
  @override
  String get formDescription;
  @override
  List<ModelFormBookingDetail> get form;
  @override
  bool? get useModal;
  @override
  @JsonKey(ignore: true)
  _$$ModelFormBookingImplCopyWith<_$ModelFormBookingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
