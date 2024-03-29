// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'head_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

HeadData _$HeadDataFromJson(Map<String, dynamic> json) {
  return _HeadData.fromJson(json);
}

/// @nodoc
mixin _$HeadData {
  int get compId => throw _privateConstructorUsedError;
  set compId(int value) => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;
  set id(int value) => throw _privateConstructorUsedError;
  int get type => throw _privateConstructorUsedError;
  set type(int value) => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  set name(String value) => throw _privateConstructorUsedError;
  int get createdBy => throw _privateConstructorUsedError;
  set createdBy(int value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HeadDataCopyWith<HeadData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HeadDataCopyWith<$Res> {
  factory $HeadDataCopyWith(HeadData value, $Res Function(HeadData) then) =
      _$HeadDataCopyWithImpl<$Res, HeadData>;
  @useResult
  $Res call({int compId, int id, int type, String name, int createdBy});
}

/// @nodoc
class _$HeadDataCopyWithImpl<$Res, $Val extends HeadData>
    implements $HeadDataCopyWith<$Res> {
  _$HeadDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? compId = null,
    Object? id = null,
    Object? type = null,
    Object? name = null,
    Object? createdBy = null,
  }) {
    return _then(_value.copyWith(
      compId: null == compId
          ? _value.compId
          : compId // ignore: cast_nullable_to_non_nullable
              as int,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      createdBy: null == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HeadDataImplCopyWith<$Res>
    implements $HeadDataCopyWith<$Res> {
  factory _$$HeadDataImplCopyWith(
          _$HeadDataImpl value, $Res Function(_$HeadDataImpl) then) =
      __$$HeadDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int compId, int id, int type, String name, int createdBy});
}

/// @nodoc
class __$$HeadDataImplCopyWithImpl<$Res>
    extends _$HeadDataCopyWithImpl<$Res, _$HeadDataImpl>
    implements _$$HeadDataImplCopyWith<$Res> {
  __$$HeadDataImplCopyWithImpl(
      _$HeadDataImpl _value, $Res Function(_$HeadDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? compId = null,
    Object? id = null,
    Object? type = null,
    Object? name = null,
    Object? createdBy = null,
  }) {
    return _then(_$HeadDataImpl(
      compId: null == compId
          ? _value.compId
          : compId // ignore: cast_nullable_to_non_nullable
              as int,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      createdBy: null == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HeadDataImpl implements _HeadData {
  _$HeadDataImpl(
      {required this.compId,
      required this.id,
      required this.type,
      required this.name,
      required this.createdBy});

  factory _$HeadDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$HeadDataImplFromJson(json);

  @override
  int compId;
  @override
  int id;
  @override
  int type;
  @override
  String name;
  @override
  int createdBy;

  @override
  String toString() {
    return 'HeadData(compId: $compId, id: $id, type: $type, name: $name, createdBy: $createdBy)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HeadDataImplCopyWith<_$HeadDataImpl> get copyWith =>
      __$$HeadDataImplCopyWithImpl<_$HeadDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HeadDataImplToJson(
      this,
    );
  }
}

abstract class _HeadData implements HeadData {
  factory _HeadData(
      {required int compId,
      required int id,
      required int type,
      required String name,
      required int createdBy}) = _$HeadDataImpl;

  factory _HeadData.fromJson(Map<String, dynamic> json) =
      _$HeadDataImpl.fromJson;

  @override
  int get compId;
  set compId(int value);
  @override
  int get id;
  set id(int value);
  @override
  int get type;
  set type(int value);
  @override
  String get name;
  set name(String value);
  @override
  int get createdBy;
  set createdBy(int value);
  @override
  @JsonKey(ignore: true)
  _$$HeadDataImplCopyWith<_$HeadDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
