import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sample_app/controllers/TestAddController.dart';

import '../Widgets/CustomTextField.dart';
import '../Widgets/QuestionForm.dart';
class TestAddPage extends GetView<TestAddController> {
  const TestAddPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Test qo'shish"),
      ),
      body: GetBuilder<TestAddController>(
        builder: (ctr) {
          return Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  CustomTextField(
                      labelText: "Test nomi",
                      hintText: "Nomi"),
                  CustomTextField(
                      labelText: "Test haqida",
                      hintText: "Ta'riflang"),
                  QuestionFrom(),
                  IconButton(onPressed: (){}, icon: Icon(Icons.add_link_rounded,size: 50,color: Colors.green,))

                ],
              ),
            ),
          );
        }
      ),
    );
  }
}
