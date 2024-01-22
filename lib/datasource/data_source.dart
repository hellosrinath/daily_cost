import 'package:daily_cost/models/app_user.dart';

import '../models/auth_response_model.dart';

abstract class DataSource {
  Future<AuthResponseModel?> login(AppUser user);
}
