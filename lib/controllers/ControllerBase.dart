import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import '../core/ApiClient.dart';

abstract class ControllerBase extends GetxController
{
  final ApiClient apiClient;

  ControllerBase({required this.apiClient});
}