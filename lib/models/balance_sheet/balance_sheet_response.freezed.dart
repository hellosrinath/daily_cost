// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'balance_sheet_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BalanceSheetResponse _$BalanceSheetResponseFromJson(Map<String, dynamic> json) {
  return _BalanceSheetResponse.fromJson(json);
}

/// @nodoc
mixin _$BalanceSheetResponse {
  bool? get status => throw _privateConstructorUsedError;
  set status(bool? value) => throw _privateConstructorUsedError;
  bool? get isAuthorized => throw _privateConstructorUsedError;
  set isAuthorized(bool? value) => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  set message(String? value) => throw _privateConstructorUsedError;
  String? get messageType => throw _privateConstructorUsedError;
  set messageType(String? value) => throw _privateConstructorUsedError;
  List<BalanceSheetData>? get data => throw _privateConstructorUsedError;
  set data(List<BalanceSheetData>? value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BalanceSheetResponseCopyWith<BalanceSheetResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BalanceSheetResponseCopyWith<$Res> {
  factory $BalanceSheetResponseCopyWith(BalanceSheetResponse value,
          $Res Function(BalanceSheetResponse) then) =
      _$BalanceSheetResponseCopyWithImpl<$Res, BalanceSheetResponse>;
  @useResult
  $Res call(
      {bool? status,
      bool? isAuthorized,
      String? message,
      String? messageType,
      List<BalanceSheetData>? data});
}

/// @nodoc
class _$BalanceSheetResponseCopyWithImpl<$Res,
        $Val extends BalanceSheetResponse>
    implements $BalanceSheetResponseCopyWith<$Res> {
  _$BalanceSheetResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? isAuthorized = freezed,
    Object? message = freezed,
    Object? messageType = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
      isAuthorized: freezed == isAuthorized
          ? _value.isAuthorized
          : isAuthorized // ignore: cast_nullable_to_non_nullable
              as bool?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      messageType: freezed == messageType
          ? _value.messageType
          : messageType // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<BalanceSheetData>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BalanceSheetResponseImplCopyWith<$Res>
    implements $BalanceSheetResponseCopyWith<$Res> {
  factory _$$BalanceSheetResponseImplCopyWith(_$BalanceSheetResponseImpl value,
          $Res Function(_$BalanceSheetResponseImpl) then) =
      __$$BalanceSheetResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool? status,
      bool? isAuthorized,
      String? message,
      String? messageType,
      List<BalanceSheetData>? data});
}

/// @nodoc
class __$$BalanceSheetResponseImplCopyWithImpl<$Res>
    extends _$BalanceSheetResponseCopyWithImpl<$Res, _$BalanceSheetResponseImpl>
    implements _$$BalanceSheetResponseImplCopyWith<$Res> {
  __$$BalanceSheetResponseImplCopyWithImpl(_$BalanceSheetResponseImpl _value,
      $Res Function(_$BalanceSheetResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? isAuthorized = freezed,
    Object? message = freezed,
    Object? messageType = freezed,
    Object? data = freezed,
  }) {
    return _then(_$BalanceSheetResponseImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
      isAuthorized: freezed == isAuthorized
          ? _value.isAuthorized
          : isAuthorized // ignore: cast_nullable_to_non_nullable
              as bool?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      messageType: freezed == messageType
          ? _value.messageType
          : messageType // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<BalanceSheetData>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BalanceSheetResponseImpl implements _BalanceSheetResponse {
  _$BalanceSheetResponseImpl(
      {required this.status,
      required this.isAuthorized,
      required this.message,
      required this.messageType,
      required this.data});

  factory _$BalanceSheetResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$BalanceSheetResponseImplFromJson(json);

  @override
  bool? status;
  @override
  bool? isAuthorized;
  @override
  String? message;
  @override
  String? messageType;
  @override
  List<BalanceSheetData>? data;

  @override
  String toString() {
    return 'BalanceSheetResponse(status: $status, isAuthorized: $isAuthorized, message: $message, messageType: $messageType, data: $data)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BalanceSheetResponseImplCopyWith<_$BalanceSheetResponseImpl>
      get copyWith =>
          __$$BalanceSheetResponseImplCopyWithImpl<_$BalanceSheetResponseImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BalanceSheetResponseImplToJson(
      this,
    );
  }
}

abstract class _BalanceSheetResponse implements BalanceSheetResponse {
  factory _BalanceSheetResponse(
      {required bool? status,
      required bool? isAuthorized,
      required String? message,
      required String? messageType,
      required List<BalanceSheetData>? data}) = _$BalanceSheetResponseImpl;

  factory _BalanceSheetResponse.fromJson(Map<String, dynamic> json) =
      _$BalanceSheetResponseImpl.fromJson;

  @override
  bool? get status;
  set status(bool? value);
  @override
  bool? get isAuthorized;
  set isAuthorized(bool? value);
  @override
  String? get message;
  set message(String? value);
  @override
  String? get messageType;
  set messageType(String? value);
  @override
  List<BalanceSheetData>? get data;
  set data(List<BalanceSheetData>? value);
  @override
  @JsonKey(ignore: true)
  _$$BalanceSheetResponseImplCopyWith<_$BalanceSheetResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
