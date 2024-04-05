import 'package:get/get.dart';
import 'package:sample_app/controllers/ControllerBase.dart';
import 'package:sample_app/core/DataModels/NewTest.dart';

class TestAddController extends ControllerBase
{
  TestAddController({required super.apiClient});
  final newTest = NewTest();
  Future<void> createTest(Map<String,dynamic> body)async
  {

    try{
      loading = true;
      update();
      var result = await apiClient.createTest(body);
      print("statuse: ${result.statusCode}");
      print("isSuccessful: ${result.isSuccessful}");
      if(result.isSuccessful)
      {
        showSuccess("Test", "muvoffaqiyatli qo'shildi ✔");
        Future.delayed(const Duration(seconds: 2)).then((value) => Get.back());
        loading=false;
        update();
        return;
      }
      else
      {
      showError("Xatolik yuz berdi", result.bodyString);
      loading=false;
      update();
      return;
      }

    }
    catch(e)
    {
      showError("Xatolik yuz berdi ❌", e.toString());
    }
    loading=false;
    update();
  }

}