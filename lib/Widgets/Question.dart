import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sample_app/Widgets/CustomButton.dart';
import 'package:sample_app/controllers/TestController.dart';
import 'package:sample_app/core/DataModels/TestData.dart';

class QuestionWidget extends GetView<TestController> {
  const QuestionWidget({super.key, required this.questions});
  final Questions questions;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.all(15),
          width: double.infinity,
          decoration:
              BoxDecoration(border: Border.all(color: Colors.black, width: 3)),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(5),
                child: Text(
                  questions.content,
                  style: const TextStyle(fontSize: 20),
                ),
              ),
              const Divider(
                thickness: 3,
                color: Colors.black,
              ),
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: questions.options.length,
                itemBuilder: (c, i) => Obx(
                  () => Card(
                    color: questions.selectedOptionId.value ==
                            questions.options[i].id
                        ? Colors.lightGreen
                        : Colors.teal,
                    child: InkWell(
                      onTap:questions.selectedOptionId.value ==
                          questions.options[i].id?null: () {
                        questions.selectedOptionId.value =
                            questions.options[i].id;
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          questions.options[i].content,
                          style: const TextStyle(fontSize: 18),
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      SizedBox(
            width: 200,
            height: 40,
            child: CustomButton(text: "Keyingisi>", onPressed: () =>
              controller.pageController.nextPage(duration: const Duration(milliseconds: 500), curve: Curves.easeOutCubic)
            ))
      ],
    );
  }
}
