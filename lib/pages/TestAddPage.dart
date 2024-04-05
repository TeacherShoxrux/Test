import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sample_app/Widgets/CustomButton.dart';
import 'package:sample_app/controllers/TestAddController.dart';
import 'package:sample_app/core/DataModels/NewTest.dart';

import '../Widgets/CustomTextField.dart';
import '../Widgets/QuestionForm.dart';
class TestAddPage extends GetView<TestAddController> {
  const TestAddPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Test qo'shish "),
      ),
      body: GetBuilder<TestAddController>(
        builder: (ctr) {
          if(controller.loading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          return Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SingleChildScrollView(
              child: Obx(
                  ()=> Column(
                    children: [
                      CustomTextField(
                          labelText: "Test nomi(${controller.newTest.quantity.value})",
                          hintText: "Nomi",
                      onChanged: (v){
                            controller.newTest.testName=v;
                      }
                      ),

                      CustomTextField(
                          labelText: "Test haqida",
                          hintText: "Ta'riflang",
                      onChanged: (v){
                            controller.newTest.description=v;
                      },
                      ),
                      ...controller.newTest.questions.map((e) => QuestionFrom(questions: e)),
                      IconButton(
                          onPressed: (){
                        controller.newTest.questions.add(Questions());
                        controller.newTest.quantity++;
                      }, icon: const Icon(Icons.add_link_rounded,size: 50,color: Colors.green,)),
                      CustomButton(text: "Saqlash", onPressed: ()=>controller.createTest(controller.newTest.toJson())),
                      const SizedBox(height: 30,)

                    ],
                  )
              ),
            ),
          );
        }
      ),
    );
  }
}
