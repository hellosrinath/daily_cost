import 'package:daily_cost/models/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_response_model.freezed.dart';

part 'auth_response_model.g.dart';

@unfreezed
class AuthResponseModel with _$AuthResponseModel {
  factory AuthResponseModel({
    required User user,
    required bool isAuthorized,
    required String token,
  }) = _AuthResponseModel;

  factory AuthResponseModel.fromJson(Map<String, dynamic> json) =>
      _$AuthResponseModelFromJson(json);
}
