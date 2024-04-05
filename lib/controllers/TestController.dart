import 'dart:io';

import 'package:get/get.dart';
import 'package:sample_app/controllers/ControllerBase.dart';
import 'package:sample_app/core/DataModels/TestData.dart';

class TestController extends ControllerBase
{
  TestController({required super.apiClient});
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
}