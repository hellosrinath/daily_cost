import 'package:daily_cost/datasource/app_data_source.dart';
import 'package:daily_cost/datasource/data_source.dart';
import 'package:daily_cost/models/app_user.dart';
import 'package:flutter/material.dart';

import '../models/auth_response_model.dart';

class AppDataProvider extends ChangeNotifier {
  final DataSource _dataSource = AppDataSource();

  Future<AuthResponseModel?> login(AppUser user) async {
    final response = await _dataSource.login(user);
    if (response == null) return null;
    return response;
  }
}
