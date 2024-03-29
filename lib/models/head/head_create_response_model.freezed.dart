// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'head_create_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

HeadCreateResponseModel _$HeadCreateResponseModelFromJson(
    Map<String, dynamic> json) {
  return _HeadCreateResponseModel.fromJson(json);
}

/// @nodoc
mixin _$HeadCreateResponseModel {
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
  $HeadCreateResponseModelCopyWith<HeadCreateResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HeadCreateResponseModelCopyWith<$Res> {
  factory $HeadCreateResponseModelCopyWith(HeadCreateResponseModel value,
          $Res Function(HeadCreateResponseModel) then) =
      _$HeadCreateResponseModelCopyWithImpl<$Res, HeadCreateResponseModel>;
  @useResult
  $Res call(
      {bool status, bool isAuthorized, String message, String messageType});
}

/// @nodoc
class _$HeadCreateResponseModelCopyWithImpl<$Res,
        $Val extends HeadCreateResponseModel>
    implements $HeadCreateResponseModelCopyWith<$Res> {
  _$HeadCreateResponseModelCopyWithImpl(this._value, this._then);

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
abstract class _$$HeadCreateResponseModelImplCopyWith<$Res>
    implements $HeadCreateResponseModelCopyWith<$Res> {
  factory _$$HeadCreateResponseModelImplCopyWith(
          _$HeadCreateResponseModelImpl value,
          $Res Function(_$HeadCreateResponseModelImpl) then) =
      __$$HeadCreateResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool status, bool isAuthorized, String message, String messageType});
}

/// @nodoc
class __$$HeadCreateResponseModelImplCopyWithImpl<$Res>
    extends _$HeadCreateResponseModelCopyWithImpl<$Res,
        _$HeadCreateResponseModelImpl>
    implements _$$HeadCreateResponseModelImplCopyWith<$Res> {
  __$$HeadCreateResponseModelImplCopyWithImpl(
      _$HeadCreateResponseModelImpl _value,
      $Res Function(_$HeadCreateResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? isAuthorized = null,
    Object? message = null,
    Object? messageType = null,
  }) {
    return _then(_$HeadCreateResponseModelImpl(
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
class _$HeadCreateResponseModelImpl implements _HeadCreateResponseModel {
  _$HeadCreateResponseModelImpl(
      {required this.status,
      required this.isAuthorized,
      required this.message,
      required this.messageType});

  factory _$HeadCreateResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$HeadCreateResponseModelImplFromJson(json);

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
    return 'HeadCreateResponseModel(status: $status, isAuthorized: $isAuthorized, message: $message, messageType: $messageType)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HeadCreateResponseModelImplCopyWith<_$HeadCreateResponseModelImpl>
      get copyWith => __$$HeadCreateResponseModelImplCopyWithImpl<
          _$HeadCreateResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HeadCreateResponseModelImplToJson(
      this,
    );
  }
}

abstract class _HeadCreateResponseModel implements HeadCreateResponseModel {
  factory _HeadCreateResponseModel(
      {required bool status,
      required bool isAuthorized,
      required String message,
      required String messageType}) = _$HeadCreateResponseModelImpl;

  factory _HeadCreateResponseModel.fromJson(Map<String, dynamic> json) =
      _$HeadCreateResponseModelImpl.fromJson;

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
  _$$HeadCreateResponseModelImplCopyWith<_$HeadCreateResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
