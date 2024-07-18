import 'dart:convert';
import 'dart:js';

import 'package:flutter/material.dart';

import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tolist/model/center_model.dart';
import 'package:tolist/model/loginmodel.dart';
import 'package:tolist/model/shift_model.dart';

import '../api_configs.dart';

class LoginController extends GetxController {
  UserModel? user;
  final dio = Dio();
  bool isLoading = true;
  CenterModel? centers;
  ShiftModel? shifts;
  LoginController() {}
  Future<void> login(String email, String password, BuildContext) async {
    var requestBody = {"email": email, "password": password};
    isLoading = true;

    final SharedPreferences prefs = await SharedPreferences.getInstance();
    try {
      await dio
          .post(
        loginUrl,
        data: requestBody,
      )
          .then((response) {
        if (response.statusCode == 200) {
          if (response.data['status'] == "success") {
            prefs.setString('currentUser', jsonEncode(response.data));
            debugPrint(prefs.getString('currentUser'));

            user =
                UserModel.fromJson(jsonDecode(prefs.getString('currentUser')!));
            isLoading = false;

            update();
          }
        } else {
          Navigator.pop(context);
          ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(response.data['message'].toString())));
          throw Exception('Failed to load data');
        }
      });
    } on DioException catch (e) {
      if (e.response != null) {
        Navigator.pop(context);

        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text(e.response?.data["message"] ?? ''),
          backgroundColor: Colors.grey,
        ));
      } else {
        Get.snackbar(e.message.toString(), e.response.toString(),
            colorText: Colors.red, snackPosition: SnackPosition.TOP);
        // print(e.requestOptions);
        // print(e.message);
      }
    }
  }

  Future<void> setUser() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    print(prefs.get('currentUser'));

    if (prefs.getString('currentUser') == null) {
      user = null;
      isLoading = false;
    } else {
      user = UserModel.fromJson(jsonDecode(prefs.getString('currentUser')!));
      isLoading = false;
    }
    update();
  }

  Future<void> logout() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    isLoading = true;

    prefs.remove('currentUser');

    user = null;
    isLoading = false;
    update();
  }
}
