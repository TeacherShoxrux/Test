import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:sample_app/Bindings/LoginBingding.dart';
import 'package:sample_app/Bindings/TestListBinding.dart';
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
        page:()=> TestListPage(),
        binding: TestListBinding()
    ),
    GetPage(name: AppRoutes.test, page:()=> TestPage()),
    GetPage(name: AppRoutes.login,
        page:()=> LoginPage(),
        binding: LoginBinding()
    ),
    GetPage(name: AppRoutes.result, page:()=> ResultPage()),
    GetPage(name: AppRoutes.testAdd, page:()=> TestAddPage()),
  ];
}