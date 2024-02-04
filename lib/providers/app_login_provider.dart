import 'package:flutter/foundation.dart';

import '../datasource/app_data_source.dart';
import '../datasource/data_source.dart';
import '../models/login/app_user.dart';
import '../models/login/auth_response_model.dart';

class AppLoginProvider extends ChangeNotifier {
  final DataSource _dataSource = AppDataSource();

  bool loading = false;
  bool isBack = false;

  Future<AuthResponseModel?> login(AppUser user) async {
    loading = true;
    notifyListeners();

    final response = await _dataSource.login(user);

    loading = false;
    isBack = true;
    notifyListeners();
    return response;
  }
}
