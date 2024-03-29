import 'package:flutter/material.dart';

import '../Widgets/CustomTextField.dart';
import '../Widgets/QuestionForm.dart';
class TestAddPage extends StatelessWidget {
  const TestAddPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Test qo'shish"),
      ),
      body: Container(
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
      ),
    );
  }
}
