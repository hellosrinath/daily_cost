import 'package:daily_cost/models/head/head_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'head_create_response_model.freezed.dart';

part 'head_create_response_model.g.dart';

@unfreezed
class HeadCreateResponseModel with _$HeadCreateResponseModel {
  factory HeadCreateResponseModel({
    required bool status,
    required bool isAuthorized,
    required String message,
    required String messageType,
  }) = _HeadCreateResponseModel;

  factory HeadCreateResponseModel.fromJson(Map<String, dynamic> json) =>
      _$HeadCreateResponseModelFromJson(json);
}
