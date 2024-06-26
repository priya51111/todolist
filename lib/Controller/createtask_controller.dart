import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:tolist/api_configs.dart';
import 'package:tolist/model/createtask.dart';
import 'package:tolist/screens.dart/createtask.dart';

class CreateTaskController extends GetxController {
  Task? task;
  final Dio dio = Dio();
  bool isloading = true;
  Future<void>   getCreateTask() async {
    try{
      await dio.post(createTaskUrl).then((response){
        if(response.statusCode ==200) {
          task = Task.fromJson(response.data);
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

 static Future<void> deletetask(String userId) async {
    try {
      print(userId);
      final dio = Dio();
      await dio
          .delete(deleteTaskUrl + userId,
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

  Future<void> updatetask(String userId,String date) async {
    try {
      final dio = Dio();
      await dio
          .patch(updateTaskUrl+ userId +date
              )
          .then((response) {
        if (response.statusCode == 200) {
          Get.snackbar("Employee Update ", "Employee Update Successfully",
              backgroundColor: Colors.green,
              colorText: Colors.black,
              snackPosition: SnackPosition.BOTTOM);
          // update();
          Get.offAll(const createtask ());
        }
      });
    } on DioException catch (e) {
      if (e.response != null) {
        Get.snackbar(e.message.toString(), e.response.toString(),
            colorText: Colors.red, snackPosition: SnackPosition.BOTTOM);
      } else {}
    }
  }
  static Future<void> getbyid(String userId) async {
    try {
      print(userId);
      final dio = Dio();
      await dio
          .get(getbyidTaskUrl + userId,
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



