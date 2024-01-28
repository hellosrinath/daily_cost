import 'package:daily_cost/models/head/head_data.dart';
import 'package:daily_cost/models/head/head_item.dart';
import 'package:daily_cost/pages/head_page.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'head_list_data.freezed.dart';
part 'head_list_data.g.dart';

@unfreezed
class HeadListData with _$HeadListData {
  factory HeadListData({
    required bool status,
    required bool isAuthorized,
    required String message,
    required String messageType,
    required List<HeadItem> data,
  }) = _HeadListData;

  factory HeadListData.fromJson(Map<String, dynamic> json) =>
      _$HeadListDataFromJson(json);
}
