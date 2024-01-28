import 'dart:convert';
import 'dart:io';

import 'package:daily_cost/datasource/data_source.dart';
import 'package:daily_cost/models/head/head_create_model.dart';
import 'package:daily_cost/models/head/head_create_response_model.dart';
import 'package:daily_cost/models/head/head_list_data.dart';
import 'package:daily_cost/models/login/app_user.dart';
import 'package:daily_cost/models/login/auth_response_model.dart';
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
      bool isAuthorized = map['isAuthorized'];
      debugPrint("Login Response: $isAuthorized");
      if (isAuthorized) {
        final authResponseModel = AuthResponseModel.fromJson(map);
        await saveToken(authResponseModel.token);
        await saveCompanyId(authResponseModel.user.companyId);
        await saveUserId(authResponseModel.user.userId);
        return authResponseModel;
      } else {
        return null;
      }
    } catch (error) {
      return null;
    }
  }

  @override
  Future<HeadCreateResponseModel?> createHead(
      HeadCreateModel headCreateModel) async {
    final url = '$baseUrl${'Head/Create'}';
    try {
      final response = await http.post(Uri.parse(url),
          headers: await authHeader,
          body: json.encode(headCreateModel.toJson()));
      final map = json.decode(response.body);
      debugPrint("createHead: $map");
      final status = map['status'];
      final isAuthorized = map['isAuthorized'];
      if (status && isAuthorized) {
        final headResponseModel = HeadCreateResponseModel.fromJson(map);
        debugPrint("createHead: $headResponseModel");
        return headResponseModel;
      } else {
        return null;
      }
    } catch (error) {
      return null;
    }
  }

  @override
  Future<HeadListData?> gettingHeadList() async {
    final url = '$baseUrl${'Head/GetHeadList'}';
    try {
      final response =
          await http.get(Uri.parse(url), headers: await authHeader);
      final map = json.decode(response.body);
      debugPrint("headList: $map");
      final status = map['status'];
      final isAuthorized = map['isAuthorized'];
      debugPrint("headList: status- $status");
      debugPrint("headList: isAuthorized- $isAuthorized");
      if (status && isAuthorized) {
        final headResponse = HeadListData.fromJson(map);
        debugPrint("headList: headResponse- $headResponse");
        return headResponse;
      } else {
        return null;
      }
    } catch (error) {
      return null;
    }
    return null;
  }
}
