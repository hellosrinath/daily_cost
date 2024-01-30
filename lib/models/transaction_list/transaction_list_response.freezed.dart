// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction_list_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TransactionListResponse _$TransactionListResponseFromJson(
    Map<String, dynamic> json) {
  return _TransactionListResponse.fromJson(json);
}

/// @nodoc
mixin _$TransactionListResponse {
  bool get status => throw _privateConstructorUsedError;
  set status(bool value) => throw _privateConstructorUsedError;
  bool get isAuthorized => throw _privateConstructorUsedError;
  set isAuthorized(bool value) => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  set message(String value) => throw _privateConstructorUsedError;
  String get messageType => throw _privateConstructorUsedError;
  set messageType(String value) => throw _privateConstructorUsedError;
  List<TransactionData> get data => throw _privateConstructorUsedError;
  set data(List<TransactionData> value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TransactionListResponseCopyWith<TransactionListResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionListResponseCopyWith<$Res> {
  factory $TransactionListResponseCopyWith(TransactionListResponse value,
          $Res Function(TransactionListResponse) then) =
      _$TransactionListResponseCopyWithImpl<$Res, TransactionListResponse>;
  @useResult
  $Res call(
      {bool status,
      bool isAuthorized,
      String message,
      String messageType,
      List<TransactionData> data});
}

/// @nodoc
class _$TransactionListResponseCopyWithImpl<$Res,
        $Val extends TransactionListResponse>
    implements $TransactionListResponseCopyWith<$Res> {
  _$TransactionListResponseCopyWithImpl(this._value, this._then);

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
    Object? data = null,
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
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<TransactionData>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TransactionListResponseImplCopyWith<$Res>
    implements $TransactionListResponseCopyWith<$Res> {
  factory _$$TransactionListResponseImplCopyWith(
          _$TransactionListResponseImpl value,
          $Res Function(_$TransactionListResponseImpl) then) =
      __$$TransactionListResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool status,
      bool isAuthorized,
      String message,
      String messageType,
      List<TransactionData> data});
}

/// @nodoc
class __$$TransactionListResponseImplCopyWithImpl<$Res>
    extends _$TransactionListResponseCopyWithImpl<$Res,
        _$TransactionListResponseImpl>
    implements _$$TransactionListResponseImplCopyWith<$Res> {
  __$$TransactionListResponseImplCopyWithImpl(
      _$TransactionListResponseImpl _value,
      $Res Function(_$TransactionListResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? isAuthorized = null,
    Object? message = null,
    Object? messageType = null,
    Object? data = null,
  }) {
    return _then(_$TransactionListResponseImpl(
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
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<TransactionData>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TransactionListResponseImpl implements _TransactionListResponse {
  _$TransactionListResponseImpl(
      {required this.status,
      required this.isAuthorized,
      required this.message,
      required this.messageType,
      required this.data});

  factory _$TransactionListResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$TransactionListResponseImplFromJson(json);

  @override
  bool status;
  @override
  bool isAuthorized;
  @override
  String message;
  @override
  String messageType;
  @override
  List<TransactionData> data;

  @override
  String toString() {
    return 'TransactionListResponse(status: $status, isAuthorized: $isAuthorized, message: $message, messageType: $messageType, data: $data)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TransactionListResponseImplCopyWith<_$TransactionListResponseImpl>
      get copyWith => __$$TransactionListResponseImplCopyWithImpl<
          _$TransactionListResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TransactionListResponseImplToJson(
      this,
    );
  }
}

abstract class _TransactionListResponse implements TransactionListResponse {
  factory _TransactionListResponse(
      {required bool status,
      required bool isAuthorized,
      required String message,
      required String messageType,
      required List<TransactionData> data}) = _$TransactionListResponseImpl;

  factory _TransactionListResponse.fromJson(Map<String, dynamic> json) =
      _$TransactionListResponseImpl.fromJson;

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
  List<TransactionData> get data;
  set data(List<TransactionData> value);
  @override
  @JsonKey(ignore: true)
  _$$TransactionListResponseImplCopyWith<_$TransactionListResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
