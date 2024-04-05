import 'package:flutter/material.dart';
import 'package:get/get.dart' ;
import '../core/ApiClient.dart';

abstract class ControllerBase extends GetxController
{
  final ApiClient apiClient;
  bool loading=false;
  @override
  ControllerBase({required this.apiClient});
  void showError(String title,String message)
  {
    Get.snackbar(title, message,colorText: Colors.white,backgroundColor: Colors.pinkAccent);
  }
  void showSuccess(String title,String message)
  {
    Get.snackbar(title, message,colorText: Colors.white,backgroundColor: Colors.green);
  }
  void showWarning(String title,String message)
  {
    Get.snackbar(title, message,colorText: Colors.white,backgroundColor: Colors.yellow);
  }
}