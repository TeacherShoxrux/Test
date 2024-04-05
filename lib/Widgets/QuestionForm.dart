import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sample_app/controllers/TestAddController.dart';
import 'package:sample_app/core/DataModels/NewTest.dart';
class QuestionFrom extends GetView<TestAddController> {
  const QuestionFrom({super.key, required this.questions});
  final Questions questions;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
    margin: const EdgeInsets.symmetric(vertical: 5),
    padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(30),
      border: Border.all(color: Colors.redAccent,width: 4)
    ),
      child: Obx(
         ()=> Column(
            children: [
              TextField(
                decoration:  const InputDecoration(
                  labelText: "Savol",
                  border: OutlineInputBorder()
                ),
                maxLines: 3,
                onChanged: (o)
                {
                  questions.content=o;
                },
              ),
              const Divider(),
               Text("Variantlar(${questions.quantity})"),
              ...questions.varinats.map((e) => Padding(
                padding: const EdgeInsets.symmetric(vertical: 4.0),
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30)
                      )
                  ),
                  onChanged: (v){
                    e.content=v;


                  },
                ),
              )),
              IconButton(onPressed: (){
                questions.varinats.add(Varinats());
                questions.quantity++;

              }, icon: const Icon(Icons.add_link_rounded,size: 50,color: Colors.green,))
            ],
          )

      ),

    );
  }
}
