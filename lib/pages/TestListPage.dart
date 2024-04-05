
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sample_app/Widgets/CustomTextField.dart';
import 'package:sample_app/controllers/TestListController.dart';
import 'package:sample_app/core/DataModels/TestListData.dart';
import 'package:sample_app/routes/routes.dart';

class TestListPage extends StatelessWidget {
  const TestListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<TestListController>(
      builder: (ctr) {
        return Scaffold(
          appBar: AppBar(
            title: Text("Testlar ro'yhati"),
            actions: [
              IconButton(onPressed: (){
                Get.toNamed(AppRoutes.testAdd);
              }, icon: Icon(Icons.add_circle,color: Colors.green,size: 50,))
            ],
          ),
          body: Container(
            child: FutureBuilder<List<TestListData>>(
              builder: (context ,snapshot) {
                if(snapshot.connectionState==ConnectionState.waiting)
                {
                  return const Center(child: CircularProgressIndicator(),);
                }
                return ListView.builder(
                    itemCount: snapshot.data?.length??0,
                    itemBuilder: (c,i){
                  return   Card(
                    color: Colors.pink,
                    child: ListTile(
                      title: Text(snapshot.data?[i].name??""),
                      textColor: Colors.white,
                      subtitle: Text(snapshot.data?[i].description??""),
                      onTap: (){
                        Get.toNamed(AppRoutes.test,arguments: {"id":snapshot.data?[i].testId});
                      },
                    ),
                  );
                });
              }, future: ctr.getData(),
            )
            // Column(
            //   children: [
            //  Card(
            //    color: Colors.pink,
            //    child: ListTile(
            //      title: Text("Matematikadan testlar to'plami"),
            //      textColor: Colors.white,
            //      subtitle: Text("Bu test abitruyentlar uchun"),
            //      onTap: (){
            //        Get.toNamed(AppRoutes.test);
            //      },
            //    ),
            //  ),
            //  Card(
            //    color: Colors.pink,
            //    child: ListTile(
            //      title: Text("Matematikadan testlar to'plami"),
            //      textColor: Colors.white,
            //      subtitle: Text("Bu test abitruyentlar uchun"),
            //    ),
            //  ),
            //  Card(
            //    color: Colors.pink,
            //    child: ListTile(
            //      title: Text("Matematikadan testlar to'plami"),
            //      textColor: Colors.white,
            //      subtitle: Text("Bu test abitruyentlar uchun"),
            //    ),
            //  ),
            //   ],
            // ),
          ),

        );
      }
    );
  }
}
