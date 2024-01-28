import 'package:freezed_annotation/freezed_annotation.dart';

part 'head_data.freezed.dart';

part 'head_data.g.dart';

@unfreezed
class HeadData with _$HeadData {
  factory HeadData({
    required int compId,
    required int id,
    required int type,
    required String name,
    required int createdBy,
  }) = _HeadData;

  factory HeadData.fromJson(Map<String, dynamic> json) => _$HeadDataFromJson(json);
}
