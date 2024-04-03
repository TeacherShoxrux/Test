import 'package:get/get.dart';
import 'package:sample_app/core/ApiClient.dart';

import '../controllers/TestAddController.dart';

class TestAddBindings extends Bindings
{
  @override
  void dependencies() {
    Get.put(TestAddController(apiClient: ApiClient.create()));
  }

}