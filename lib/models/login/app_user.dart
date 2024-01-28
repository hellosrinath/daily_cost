import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_user.freezed.dart';

part 'app_user.g.dart';

@unfreezed
class AppUser with _$AppUser {
  factory AppUser({
    required String LoginId,
    required String password,
  }) = _AppUser;

  factory AppUser.fromJson(Map<String, dynamic> json) =>
      _$AppUserFromJson(json);
}
