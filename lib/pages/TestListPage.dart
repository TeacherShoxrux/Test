
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sample_app/Widgets/CustomTextField.dart';
import 'package:sample_app/routes/routes.dart';

class TestListPage extends StatelessWidget {
  const TestListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TestListPage"),
        actions: [
          IconButton(onPressed: (){
            Get.toNamed(AppRoutes.testAdd);
          }, icon: Icon(Icons.add_circle,color: Colors.green,size: 50,))
        ],
      ),
      body: Container(
        child: Column(
          children: [
         Card(
           color: Colors.pink,
           child: ListTile(
             title: Text("Matematikadan testlar to'plami"),
             textColor: Colors.white,
             subtitle: Text("Bu test abitruyentlar uchun"),
             onTap: (){
               Get.toNamed(AppRoutes.test);
             },
           ),
         ),
         Card(
           color: Colors.pink,
           child: ListTile(
             title: Text("Matematikadan testlar to'plami"),
             textColor: Colors.white,
             subtitle: Text("Bu test abitruyentlar uchun"),
           ),
         ),
         Card(
           color: Colors.pink,
           child: ListTile(
             title: Text("Matematikadan testlar to'plami"),
             textColor: Colors.white,
             subtitle: Text("Bu test abitruyentlar uchun"),
           ),
         ),
          ],
        ),
      ),

    );
  }
}
