import 'dart:convert';
import 'dart:io';

import 'package:daily_cost/datasource/data_source.dart';
import 'package:daily_cost/models/app_user.dart';
import 'package:daily_cost/models/auth_response_model.dart';
import 'package:daily_cost/utils/helper_functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

class AppDataSource extends DataSource {
  final String baseUrl = 'https://accounting.uzzalprasad.com/api/';

  Map<String, String> get header => {
        'content-Type': 'application/json',
      };

  Future<Map<String, String>> get authHeader async => {
        'content-Type': 'application/json',
        HttpHeaders.authorizationHeader: 'Bearer ${await getToken()}'
      };

  @override
  Future<AuthResponseModel?> login(AppUser user) async {
    final url = '$baseUrl${'User/Login'}';
    try {
      final response = await http.post(
        Uri.parse(url),
        headers: header,
        body: json.encode(user.toJson()),
      );
      final map = json.decode(response.body);
      debugPrint("Login Response: $map");
      final authResponseModel = AuthResponseModel.fromJson(map);
      await saveToken(authResponseModel.token);
      await saveCompanyId(authResponseModel.user.companyId);
      await saveUserId(authResponseModel.user.userId);
      return authResponseModel;
    } catch (error) {
      return null;
    }
  }
}
