import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:sample_app/Widgets/CustomButton.dart';
import 'package:sample_app/controllers/TestController.dart';
import 'package:sample_app/core/DataModels/TestData.dart';

import '../Widgets/Question.dart';

class TestPage extends StatelessWidget {
  const TestPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<TestController>(builder: (ctr) {
      return Scaffold(
        appBar: AppBar(
          titleSpacing: 0,
          backgroundColor: Colors.green,
          leading: const SizedBox(),
          title: const Text(
            "10:30",
            style: TextStyle(
                fontSize: 30, color: Colors.white, fontWeight: FontWeight.bold),
          ),
          actions: [CustomButton(text: "Tesni yakunlash", onPressed: () {})],
        ),
        body: FutureBuilder<TestData?>(
            future: ctr.getData(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(
                    child: CircularProgressIndicator.adaptive());
              }
              if (snapshot.hasError) {
                return Center(
                  child: Text(snapshot.error.toString()),
                );
              }
              return Column(
                children: [
                  SizedBox(
                    height: 60,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: snapshot.data?.questions.length ?? 0,
                        itemBuilder: (context, index) => Obx(() => Container(
                              margin: const EdgeInsets.symmetric(horizontal: 2),
                              color: ctr.currentQuestionIndex.value == index
                                  ? Colors.black26
                                  : Colors.transparent,
                              child: Container(
                                margin: const EdgeInsets.all(5),
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(25),
                                    color: snapshot.data?.questions[index]
                                                .selectedOptionId.value ==
                                            0
                                        ? Colors.purple
                                        : Colors.green),
                                child: InkWell(
                                    onTap: () => ctr.goToPage(index),
                                    child: Center(
                                        child: Text(
                                      "${index + 1}",
                                      style: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 22,
                                          color: Colors.white),
                                    ))),
                              ),
                            ))),
                  ),
                  Expanded(
                    child: PageView.builder(
                        controller: ctr.pageController,
                        onPageChanged: ctr.onPageChanged,
                        itemCount: snapshot.data?.questions.length ?? 0,
                        itemBuilder: (c, ind) => QuestionWidget(
                              questions: snapshot.data!.questions[ind],
                            )),
                  ),
                ],
              );
            }),
      );
    });
  }
}
