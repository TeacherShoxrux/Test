import 'package:sample_app/controllers/ControllerBase.dart';
import 'package:sample_app/core/DataModels/NewTest.dart';

class TestAddController extends ControllerBase
{
  TestAddController({required super.apiClient});
  final newTest = NewTest();
}