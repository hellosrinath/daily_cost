// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'head_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

HeadItem _$HeadItemFromJson(Map<String, dynamic> json) {
  return _HeadItem.fromJson(json);
}

/// @nodoc
mixin _$HeadItem {
  int get compId => throw _privateConstructorUsedError;
  set compId(int value) => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;
  set id(int value) => throw _privateConstructorUsedError;
  int get type => throw _privateConstructorUsedError;
  set type(int value) => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  set name(String value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HeadItemCopyWith<HeadItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HeadItemCopyWith<$Res> {
  factory $HeadItemCopyWith(HeadItem value, $Res Function(HeadItem) then) =
      _$HeadItemCopyWithImpl<$Res, HeadItem>;
  @useResult
  $Res call({int compId, int id, int type, String name});
}

/// @nodoc
class _$HeadItemCopyWithImpl<$Res, $Val extends HeadItem>
    implements $HeadItemCopyWith<$Res> {
  _$HeadItemCopyWithImpl(this._value, this._then);

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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HeadItemImplCopyWith<$Res>
    implements $HeadItemCopyWith<$Res> {
  factory _$$HeadItemImplCopyWith(
          _$HeadItemImpl value, $Res Function(_$HeadItemImpl) then) =
      __$$HeadItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int compId, int id, int type, String name});
}

/// @nodoc
class __$$HeadItemImplCopyWithImpl<$Res>
    extends _$HeadItemCopyWithImpl<$Res, _$HeadItemImpl>
    implements _$$HeadItemImplCopyWith<$Res> {
  __$$HeadItemImplCopyWithImpl(
      _$HeadItemImpl _value, $Res Function(_$HeadItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? compId = null,
    Object? id = null,
    Object? type = null,
    Object? name = null,
  }) {
    return _then(_$HeadItemImpl(
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HeadItemImpl implements _HeadItem {
  _$HeadItemImpl(
      {required this.compId,
      required this.id,
      required this.type,
      required this.name});

  factory _$HeadItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$HeadItemImplFromJson(json);

  @override
  int compId;
  @override
  int id;
  @override
  int type;
  @override
  String name;

  @override
  String toString() {
    return 'HeadItem(compId: $compId, id: $id, type: $type, name: $name)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HeadItemImplCopyWith<_$HeadItemImpl> get copyWith =>
      __$$HeadItemImplCopyWithImpl<_$HeadItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HeadItemImplToJson(
      this,
    );
  }
}

abstract class _HeadItem implements HeadItem {
  factory _HeadItem(
      {required int compId,
      required int id,
      required int type,
      required String name}) = _$HeadItemImpl;

  factory _HeadItem.fromJson(Map<String, dynamic> json) =
      _$HeadItemImpl.fromJson;

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
  @JsonKey(ignore: true)
  _$$HeadItemImplCopyWith<_$HeadItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
