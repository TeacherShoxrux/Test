import 'package:get/get.dart';
import 'package:sample_app/controllers/TestListController.dart';

class TestListBinding extends Bindings{
  @override
  void dependencies() {
     Get.put(TestListController());
  }

}