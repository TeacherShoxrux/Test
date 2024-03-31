import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sample_app/Widgets/CustomButton.dart';
import 'package:sample_app/Widgets/CustomTextField.dart';

import '../routes/routes.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Ro'yhatdan o'tish"),),
        body: Center(
          child: SizedBox(
            width: 350,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  FlutterLogo(size: 100,),
                  CustomTextField(labelText: 'Full name', hintText: 'Ivan Ivanov Ivanocish',),
                  CustomTextField(labelText: 'Tel nomer', hintText: '+998901234567',),
                  CustomTextField(labelText: 'Parol', hintText: '*******',obsecure: true,),
                  SizedBox(height: 10,),
                  SizedBox(width:350,child: CustomButton(text: "Ro'yhatdan o'tish", onPressed: () {
                    Get.toNamed(AppRoutes.testList);
                  },),height: 70,),


                ],
              ),
            ),
          ),
        )

    );
  }
}
