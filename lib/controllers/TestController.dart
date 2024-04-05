import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:sample_app/controllers/ControllerBase.dart';
import 'package:sample_app/core/DataModels/TestData.dart';

class TestController extends ControllerBase
{
  TestController({required super.apiClient});
  late PageController pageController;
  Rx<int> currentQuestionIndex=Rx<int>(0);
  Future<TestData?> getData()async
  {
    try{
      var response = await apiClient.getTestById(
          2//Get.arguments['id']
      );
      if(response.isSuccessful)
        {
          showSuccess("Test", "Boshlandi✔✔✔");
        return TestData.fromJson(response.body);
        }
      showSuccess("Xatolik ", response.bodyString);
      return null;
    }catch(e)
    {
    throw SocketException("Ma'lumotlarni olishda xatolik yuz berdi: $e");
    }
  }

  void onPageChanged(int index)
  {
    currentQuestionIndex.value=index;
  }
  @override
  void onInit() {
    pageController = PageController();
    super.onInit();
  }

  goToPage(int index) {
    currentQuestionIndex.value=index;
    pageController.animateToPage(index, duration: const Duration(milliseconds: 500), curve: Curves.easeOutCubic);
  }
}