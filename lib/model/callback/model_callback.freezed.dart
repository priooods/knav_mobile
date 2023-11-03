// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'model_callback.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ModelCallback _$ModelCallbackFromJson(Map<String, dynamic> json) {
  return _ModelCallback.fromJson(json);
}

/// @nodoc
mixin _$ModelCallback {
  dynamic get notification => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  int? get code => throw _privateConstructorUsedError;
  dynamic get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ModelCallbackCopyWith<ModelCallback> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ModelCallbackCopyWith<$Res> {
  factory $ModelCallbackCopyWith(
          ModelCallback value, $Res Function(ModelCallback) then) =
      _$ModelCallbackCopyWithImpl<$Res, ModelCallback>;
  @useResult
  $Res call({dynamic notification, String? message, int? code, dynamic data});
}

/// @nodoc
class _$ModelCallbackCopyWithImpl<$Res, $Val extends ModelCallback>
    implements $ModelCallbackCopyWith<$Res> {
  _$ModelCallbackCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? notification = freezed,
    Object? message = freezed,
    Object? code = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      notification: freezed == notification
          ? _value.notification
          : notification // ignore: cast_nullable_to_non_nullable
              as dynamic,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ModelCallbackImplCopyWith<$Res>
    implements $ModelCallbackCopyWith<$Res> {
  factory _$$ModelCallbackImplCopyWith(
          _$ModelCallbackImpl value, $Res Function(_$ModelCallbackImpl) then) =
      __$$ModelCallbackImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({dynamic notification, String? message, int? code, dynamic data});
}

/// @nodoc
class __$$ModelCallbackImplCopyWithImpl<$Res>
    extends _$ModelCallbackCopyWithImpl<$Res, _$ModelCallbackImpl>
    implements _$$ModelCallbackImplCopyWith<$Res> {
  __$$ModelCallbackImplCopyWithImpl(
      _$ModelCallbackImpl _value, $Res Function(_$ModelCallbackImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? notification = freezed,
    Object? message = freezed,
    Object? code = freezed,
    Object? data = freezed,
  }) {
    return _then(_$ModelCallbackImpl(
      notification: freezed == notification
          ? _value.notification
          : notification // ignore: cast_nullable_to_non_nullable
              as dynamic,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ModelCallbackImpl implements _ModelCallback {
  const _$ModelCallbackImpl(
      {this.notification, this.message, this.code, this.data});

  factory _$ModelCallbackImpl.fromJson(Map<String, dynamic> json) =>
      _$$ModelCallbackImplFromJson(json);

  @override
  final dynamic notification;
  @override
  final String? message;
  @override
  final int? code;
  @override
  final dynamic data;

  @override
  String toString() {
    return 'ModelCallback(notification: $notification, message: $message, code: $code, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ModelCallbackImpl &&
            const DeepCollectionEquality()
                .equals(other.notification, notification) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.code, code) || other.code == code) &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(notification),
      message,
      code,
      const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ModelCallbackImplCopyWith<_$ModelCallbackImpl> get copyWith =>
      __$$ModelCallbackImplCopyWithImpl<_$ModelCallbackImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ModelCallbackImplToJson(
      this,
    );
  }
}

abstract class _ModelCallback implements ModelCallback {
  const factory _ModelCallback(
      {final dynamic notification,
      final String? message,
      final int? code,
      final dynamic data}) = _$ModelCallbackImpl;

  factory _ModelCallback.fromJson(Map<String, dynamic> json) =
      _$ModelCallbackImpl.fromJson;

  @override
  dynamic get notification;
  @override
  String? get message;
  @override
  int? get code;
  @override
  dynamic get data;
  @override
  @JsonKey(ignore: true)
  _$$ModelCallbackImplCopyWith<_$ModelCallbackImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
