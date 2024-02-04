// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction_delete_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TransactionDeleteResponse _$TransactionDeleteResponseFromJson(
    Map<String, dynamic> json) {
  return _TransactionDeleteResponse.fromJson(json);
}

/// @nodoc
mixin _$TransactionDeleteResponse {
  bool get status => throw _privateConstructorUsedError;
  set status(bool value) => throw _privateConstructorUsedError;
  bool get isAuthorized => throw _privateConstructorUsedError;
  set isAuthorized(bool value) => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  set message(String value) => throw _privateConstructorUsedError;
  String get messageType => throw _privateConstructorUsedError;
  set messageType(String value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TransactionDeleteResponseCopyWith<TransactionDeleteResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionDeleteResponseCopyWith<$Res> {
  factory $TransactionDeleteResponseCopyWith(TransactionDeleteResponse value,
          $Res Function(TransactionDeleteResponse) then) =
      _$TransactionDeleteResponseCopyWithImpl<$Res, TransactionDeleteResponse>;
  @useResult
  $Res call(
      {bool status, bool isAuthorized, String message, String messageType});
}

/// @nodoc
class _$TransactionDeleteResponseCopyWithImpl<$Res,
        $Val extends TransactionDeleteResponse>
    implements $TransactionDeleteResponseCopyWith<$Res> {
  _$TransactionDeleteResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? isAuthorized = null,
    Object? message = null,
    Object? messageType = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
      isAuthorized: null == isAuthorized
          ? _value.isAuthorized
          : isAuthorized // ignore: cast_nullable_to_non_nullable
              as bool,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      messageType: null == messageType
          ? _value.messageType
          : messageType // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TransactionDeleteResponseImplCopyWith<$Res>
    implements $TransactionDeleteResponseCopyWith<$Res> {
  factory _$$TransactionDeleteResponseImplCopyWith(
          _$TransactionDeleteResponseImpl value,
          $Res Function(_$TransactionDeleteResponseImpl) then) =
      __$$TransactionDeleteResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool status, bool isAuthorized, String message, String messageType});
}

/// @nodoc
class __$$TransactionDeleteResponseImplCopyWithImpl<$Res>
    extends _$TransactionDeleteResponseCopyWithImpl<$Res,
        _$TransactionDeleteResponseImpl>
    implements _$$TransactionDeleteResponseImplCopyWith<$Res> {
  __$$TransactionDeleteResponseImplCopyWithImpl(
      _$TransactionDeleteResponseImpl _value,
      $Res Function(_$TransactionDeleteResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? isAuthorized = null,
    Object? message = null,
    Object? messageType = null,
  }) {
    return _then(_$TransactionDeleteResponseImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
      isAuthorized: null == isAuthorized
          ? _value.isAuthorized
          : isAuthorized // ignore: cast_nullable_to_non_nullable
              as bool,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      messageType: null == messageType
          ? _value.messageType
          : messageType // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TransactionDeleteResponseImpl implements _TransactionDeleteResponse {
  _$TransactionDeleteResponseImpl(
      {required this.status,
      required this.isAuthorized,
      required this.message,
      required this.messageType});

  factory _$TransactionDeleteResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$TransactionDeleteResponseImplFromJson(json);

  @override
  bool status;
  @override
  bool isAuthorized;
  @override
  String message;
  @override
  String messageType;

  @override
  String toString() {
    return 'TransactionDeleteResponse(status: $status, isAuthorized: $isAuthorized, message: $message, messageType: $messageType)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TransactionDeleteResponseImplCopyWith<_$TransactionDeleteResponseImpl>
      get copyWith => __$$TransactionDeleteResponseImplCopyWithImpl<
          _$TransactionDeleteResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TransactionDeleteResponseImplToJson(
      this,
    );
  }
}

abstract class _TransactionDeleteResponse implements TransactionDeleteResponse {
  factory _TransactionDeleteResponse(
      {required bool status,
      required bool isAuthorized,
      required String message,
      required String messageType}) = _$TransactionDeleteResponseImpl;

  factory _TransactionDeleteResponse.fromJson(Map<String, dynamic> json) =
      _$TransactionDeleteResponseImpl.fromJson;

  @override
  bool get status;
  set status(bool value);
  @override
  bool get isAuthorized;
  set isAuthorized(bool value);
  @override
  String get message;
  set message(String value);
  @override
  String get messageType;
  set messageType(String value);
  @override
  @JsonKey(ignore: true)
  _$$TransactionDeleteResponseImplCopyWith<_$TransactionDeleteResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
