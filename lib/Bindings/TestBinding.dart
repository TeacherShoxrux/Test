import 'package:get/get.dart';

import '../controllers/TestController.dart';
import '../core/ApiClient.dart';

class TestBinding extends Bindings
{
  @override
  void dependencies() {
    Get.put(TestController(apiClient: ApiClient.create()));
  }

}