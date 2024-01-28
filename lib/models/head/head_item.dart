import 'package:freezed_annotation/freezed_annotation.dart';

part 'head_item.freezed.dart';

part 'head_item.g.dart';

@unfreezed
class HeadItem with _$HeadItem {
  factory HeadItem({
    required int compId,
    required int id,
    required int type,
    required String name,
  }) = _HeadItem;

  factory HeadItem.fromJson(Map<String, dynamic> json) => _$HeadItemFromJson(json);
}