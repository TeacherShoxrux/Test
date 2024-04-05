import 'dart:io';
import 'package:sample_app/controllers/ControllerBase.dart';
import 'package:sample_app/core/DataModels/TestListData.dart';

class TestListController extends ControllerBase
{
  TestListController({required super.apiClient});


  Future<List<TestListData>> getData()async
  {
    try{
      var response = await apiClient.getTest();
      print(response.statusCode);
      print(response.bodyString);
      if(response.isSuccessful)
        {
          showSuccess("Status", "testlar muvofaqqiyatli yuklandi");
          return response.body.map<TestListData>((e) =>TestListData.fromJson(e)).toList();
        }
      return [];
    }catch(e)
    {
      showError("Xatolik yuz berdi", e.toString());
      throw const SocketException("Intertega ulashda xatolik");
    }
  }
}