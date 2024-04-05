import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sample_app/Widgets/CustomButton.dart';
import 'package:sample_app/core/DataModels/TestData.dart';
class QuestionWidget extends StatelessWidget {
  const QuestionWidget({super.key, required this.questions});
  final Questions questions;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(15),

          width: double.infinity,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black,width: 3)

          ),
          child: Column(
            children: [
              Padding(padding: EdgeInsets.all(5),
                child:Text("Ispaniyani poytaxti qayerda joylashgan  ekan bilasizlarmi",style: TextStyle(fontSize: 20),),
              ),
            Divider(
              thickness: 3,
              color: Colors.black,
            ),
              Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Ispaniyani poytaxti qayerda joylashgan  ekan bilasizlarmi",style: TextStyle(fontSize: 18),),
                  ),color: Colors.lightGreen,),
             Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Ispaniyani poytaxti qayerda joylashgan  ekan bilasizlarmi",style: TextStyle(fontSize: 18),),
                  ),color: Colors.lightGreen,),
             Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Ispaniyani poytaxti qayerda joylashgan  ekan bilasizlarmi",style: TextStyle(fontSize: 18),),
                  ),color: Colors.lightGreen,),
             Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Ispaniyani poytaxti qayerda joylashgan  ekan bilasizlarmi",style: TextStyle(fontSize: 18),),
                  ),color: Colors.lightGreen,),

            ],
          ),

        ),
        SizedBox(
            width: 200,
            height: 65,
            child: CustomButton(text: "Keyingisi>", onPressed: (){}))
      ],
    );
  }
}
