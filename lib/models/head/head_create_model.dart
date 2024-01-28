import 'package:freezed_annotation/freezed_annotation.dart';

part 'head_create_model.freezed.dart';

part 'head_create_model.g.dart';

@unfreezed
class HeadCreateModel with _$HeadCreateModel {
  factory HeadCreateModel({
    required int CompId,
    required int Type,
    required String Name,
    required int CreatedBy,
    @Default('192.168.1.1') String CreatedIp,
    @Default(0) int UpdatedBy,
    @Default('192.169.1.1') String UpdatedIp,
  }) = _HeadCreateModel;

  factory HeadCreateModel.fromJson(Map<String, dynamic> json) =>
      _$HeadCreateModelFromJson(json);
}
