import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../routes/routes.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("LoginPage"),),
      body: Center(
        child: FloatingActionButton(onPressed: (){
          Get.toNamed(AppRoutes.testList);

        },),
      ),
    );
  }
}
