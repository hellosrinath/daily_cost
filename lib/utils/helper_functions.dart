import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'constants.dart';

String getFormattedDate(DateTime dt, {String pattern = 'yyyy-MM-dd'}) {
  return DateFormat(pattern).format(dt);
}

void showMessage(BuildContext context, String msg) =>
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          msg,
          style: const TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 8,
      ),
    );

Future<bool> saveToken(String token) async {
  final pref = await SharedPreferences.getInstance();
  return pref.setString(accessToken, token);
}

Future<String> getToken() async {
  final pref = await SharedPreferences.getInstance();
  return pref.getString(accessToken) ?? '';
}

Future<bool> saveUserName(String userName) async {
  final pref = await SharedPreferences.getInstance();
  return pref.setString(appUserName, userName);
}

Future<String> getUserName() async {
  final pref = await SharedPreferences.getInstance();
  return pref.getString(appUserName) ?? '';
}

Future<bool> saveCompanyId(int companyId) async {
  final pref = await SharedPreferences.getInstance();
  return pref.setInt(appCompanyId, companyId);
}

Future<int> getCompanyId() async {
  final pref = await SharedPreferences.getInstance();
  return pref.getInt(appCompanyId) ?? 0;
}

Future<bool> saveLoginUserName(String loginUserName) async {
  final pref = await SharedPreferences.getInstance();
  return pref.setString(appLoginUserName, loginUserName);
}

Future<String> getLoginUserName() async {
  final pref = await SharedPreferences.getInstance();
  return pref.getString(appLoginUserName) ?? '';
}

Future<bool> saveLoginPassword(String loginPassword) async {
  final pref = await SharedPreferences.getInstance();
  return pref.setString(appLoginPassword, loginPassword);
}

Future<String> getLoginPassword() async {
  final pref = await SharedPreferences.getInstance();
  return pref.getString(appLoginPassword) ?? '';
}

Future<bool> saveUserId(int userId) async {
  final pref = await SharedPreferences.getInstance();
  return pref.setInt(appUserId, userId);
}

Future<int> getUserId() async {
  final pref = await SharedPreferences.getInstance();
  return pref.getInt(appUserId) ?? 0;
}
