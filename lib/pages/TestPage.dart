import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:sample_app/Widgets/CustomButton.dart';
import 'package:sample_app/controllers/TestController.dart';
import 'package:sample_app/core/DataModels/TestData.dart';

import '../Widgets/Question.dart';
class TestPage extends StatelessWidget {
  const TestPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<TestController>(
      builder: (ctr) {
        return Scaffold(
          appBar: AppBar(
            titleSpacing: 0,
            backgroundColor: Colors.green,
            leading: SizedBox(),
            title: const Text("10:30",style: TextStyle(fontSize: 30,color:Colors.white,fontWeight: FontWeight.bold),),
          actions: [
            CustomButton(text: "Tesni yakunnlash", onPressed: (){})
          ],
          ),
          body: FutureBuilder<TestData?>(
            future: ctr.getData(),
            builder: (context,snapshot) {
              if(snapshot.connectionState==ConnectionState.waiting)
                {
                  return const Center(child: CircularProgressIndicator.adaptive());
                }
              if(snapshot.hasError)
                {
                  return Center( child: Text(snapshot.error.toString()),);
                }
              return Column(
                children: [
                  SizedBox(
                    height: 60,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: snapshot.data?.questions.length??0,
                        itemBuilder: (context,index)=>
                            Container(
                              margin: const EdgeInsets.all(5),
                          width: 50,height: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                color: Colors.purple
                              ),
                            child: Center(child: Text("${index+1}",style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 22,color: Colors.white),)),
                            )),
                  ),
                  Expanded(
                    child: PageView.builder(
                      itemCount:  snapshot.data?.questions.length??0,
                        itemBuilder: (c,ind)=> QuestionWidget( questions:snapshot.data!.questions[ind],)),
                  ),

                ],
              );
            }
          ),
        );
      }
    );
  }
}
