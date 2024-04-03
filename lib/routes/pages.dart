import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:sample_app/Bindings/LoginBingding.dart';
import 'package:sample_app/Bindings/TestAddBindings.dart';
import 'package:sample_app/Bindings/TestListBinding.dart';
import 'package:sample_app/pages/SignUpPage.dart';
import 'package:sample_app/pages/TestAddPage.dart';
import 'package:sample_app/pages/TestListPage.dart';
import 'package:sample_app/routes/routes.dart';

import '../pages/LoginPage.dart';
import '../pages/ResultPage.dart';
import '../pages/TestPage.dart';

class Pages{
  static List<GetPage> pagesList =
  [
    GetPage(
        name: AppRoutes.testList,
        page:()=> const TestListPage(),
        binding: TestListBinding()
    ),
    GetPage(name: AppRoutes.test, page:()=> const TestPage()),
    GetPage(name: AppRoutes.login,
        page:()=> const LoginPage(),
        binding: LoginBinding()
    ),
    GetPage(name: AppRoutes.result, page:()=> const ResultPage()),
    GetPage(
        name: AppRoutes.testAdd,
        page:()=> const TestAddPage(),
        binding: TestAddBindings()),
    GetPage(name: AppRoutes.signUp, page:()=> SignUpPage()),
  ];
}