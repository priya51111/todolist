import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:tolist/api_configs.dart';
import 'package:tolist/model/createmenu.dart';


class CreateMenuController extends GetxController {
  Menu? menu;
  final Dio dio = Dio();
  bool isloading = true;
  Future<void>   getCreatemenu() async {
    try{
      await dio.post(createMenuUrl).then((response){
        if(response.statusCode ==200) {
          menu= Menu.fromJson(response.data);
          isloading = false;
          update();
        }
      });
    }on DioException catch (e) {
      if (e.response != null) {
        Get.snackbar(
          e.message.toString(),
          e.response.toString(),
          colorText: Colors.red,
          snackPosition: SnackPosition.BOTTOM,
        );
      }
    }
  } 

 static Future<void> deletemenu(String userId) async {
    try {
      print(userId);
      final dio = Dio();
      await dio
          .delete(deleteMenuUrl + userId,
              )
          .then((response) {
        if (response.statusCode == 200) {
             // update();
         
        }
      });
    } on DioException catch (e) {
      if (e.response != null) {
        Get.snackbar(e.message.toString(), e.response.toString(),
            colorText: Colors.red, snackPosition: SnackPosition.BOTTOM);
      } else {}
    }
  }

  Future<void> updatemenu(String userId,String date) async {
    try {
      final dio = Dio();
      await dio
          .patch(updateMenuUrl+ userId +date
              )
          .then((response) {
        if (response.statusCode == 200) {
          Get.snackbar("Employee Update ", "Employee Update Successfully",
              backgroundColor: Colors.green,
              colorText: Colors.black,
              snackPosition: SnackPosition.BOTTOM);
         
        }
      });
    } on DioException catch (e) {
      if (e.response != null) {
        Get.snackbar(e.message.toString(), e.response.toString(),
            colorText: Colors.red, snackPosition: SnackPosition.BOTTOM);
      } else {}
    }
  }
  static Future<void> getbyidmenu(String userId) async {
    try {
      print(userId);
      final dio = Dio();
      await dio
          .get(getbyidMenuUrl + userId,
              )
          .then((response) {
        if (response.statusCode == 200) {
             // getbyid();
         
        }
      });
    } on DioException catch (e) {
      if (e.response != null) {
        Get.snackbar(e.message.toString(), e.response.toString(),
            colorText: Colors.red, snackPosition: SnackPosition.BOTTOM);
      } else {}
    }
  }

}



