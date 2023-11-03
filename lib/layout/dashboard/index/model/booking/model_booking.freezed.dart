// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'model_booking.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ModelBooking _$ModelBookingFromJson(Map<String, dynamic> json) {
  return _ModelBooking.fromJson(json);
}

/// @nodoc
mixin _$ModelBooking {
  int? get id => throw _privateConstructorUsedError;
  String? get bookingNo => throw _privateConstructorUsedError;
  String? get vesselName => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  List<ModelBookingChildren>? get other => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ModelBookingCopyWith<ModelBooking> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ModelBookingCopyWith<$Res> {
  factory $ModelBookingCopyWith(
          ModelBooking value, $Res Function(ModelBooking) then) =
      _$ModelBookingCopyWithImpl<$Res, ModelBooking>;
  @useResult
  $Res call(
      {int? id,
      String? bookingNo,
      String? vesselName,
      String? status,
      List<ModelBookingChildren>? other});
}

/// @nodoc
class _$ModelBookingCopyWithImpl<$Res, $Val extends ModelBooking>
    implements $ModelBookingCopyWith<$Res> {
  _$ModelBookingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? bookingNo = freezed,
    Object? vesselName = freezed,
    Object? status = freezed,
    Object? other = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      bookingNo: freezed == bookingNo
          ? _value.bookingNo
          : bookingNo // ignore: cast_nullable_to_non_nullable
              as String?,
      vesselName: freezed == vesselName
          ? _value.vesselName
          : vesselName // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      other: freezed == other
          ? _value.other
          : other // ignore: cast_nullable_to_non_nullable
              as List<ModelBookingChildren>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ModelBookingImplCopyWith<$Res>
    implements $ModelBookingCopyWith<$Res> {
  factory _$$ModelBookingImplCopyWith(
          _$ModelBookingImpl value, $Res Function(_$ModelBookingImpl) then) =
      __$$ModelBookingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? bookingNo,
      String? vesselName,
      String? status,
      List<ModelBookingChildren>? other});
}

/// @nodoc
class __$$ModelBookingImplCopyWithImpl<$Res>
    extends _$ModelBookingCopyWithImpl<$Res, _$ModelBookingImpl>
    implements _$$ModelBookingImplCopyWith<$Res> {
  __$$ModelBookingImplCopyWithImpl(
      _$ModelBookingImpl _value, $Res Function(_$ModelBookingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? bookingNo = freezed,
    Object? vesselName = freezed,
    Object? status = freezed,
    Object? other = freezed,
  }) {
    return _then(_$ModelBookingImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      bookingNo: freezed == bookingNo
          ? _value.bookingNo
          : bookingNo // ignore: cast_nullable_to_non_nullable
              as String?,
      vesselName: freezed == vesselName
          ? _value.vesselName
          : vesselName // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      other: freezed == other
          ? _value._other
          : other // ignore: cast_nullable_to_non_nullable
              as List<ModelBookingChildren>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ModelBookingImpl implements _ModelBooking {
  const _$ModelBookingImpl(
      {this.id,
      this.bookingNo,
      this.vesselName,
      this.status,
      final List<ModelBookingChildren>? other})
      : _other = other;

  factory _$ModelBookingImpl.fromJson(Map<String, dynamic> json) =>
      _$$ModelBookingImplFromJson(json);

  @override
  final int? id;
  @override
  final String? bookingNo;
  @override
  final String? vesselName;
  @override
  final String? status;
  final List<ModelBookingChildren>? _other;
  @override
  List<ModelBookingChildren>? get other {
    final value = _other;
    if (value == null) return null;
    if (_other is EqualUnmodifiableListView) return _other;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ModelBooking(id: $id, bookingNo: $bookingNo, vesselName: $vesselName, status: $status, other: $other)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ModelBookingImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.bookingNo, bookingNo) ||
                other.bookingNo == bookingNo) &&
            (identical(other.vesselName, vesselName) ||
                other.vesselName == vesselName) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._other, this._other));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, bookingNo, vesselName,
      status, const DeepCollectionEquality().hash(_other));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ModelBookingImplCopyWith<_$ModelBookingImpl> get copyWith =>
      __$$ModelBookingImplCopyWithImpl<_$ModelBookingImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ModelBookingImplToJson(
      this,
    );
  }
}

abstract class _ModelBooking implements ModelBooking {
  const factory _ModelBooking(
      {final int? id,
      final String? bookingNo,
      final String? vesselName,
      final String? status,
      final List<ModelBookingChildren>? other}) = _$ModelBookingImpl;

  factory _ModelBooking.fromJson(Map<String, dynamic> json) =
      _$ModelBookingImpl.fromJson;

  @override
  int? get id;
  @override
  String? get bookingNo;
  @override
  String? get vesselName;
  @override
  String? get status;
  @override
  List<ModelBookingChildren>? get other;
  @override
  @JsonKey(ignore: true)
  _$$ModelBookingImplCopyWith<_$ModelBookingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
