import 'package:get/get.dart';
import 'package:sample_app/controllers/LoginController.dart';

class LoginBinding extends Bindings
{
  @override
  void dependencies() {
    Get.put(LoginController());
  }

}