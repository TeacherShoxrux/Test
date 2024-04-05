import 'package:get/get.dart';

class NewTest {
  NewTest(){
    this.questions=<Questions>[Questions()];
  }
  var quantity=1.obs;
  String testName ="";
  String content="";
  late List<Questions> questions;
  String? description ="";

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['testName'] = testName;
    map['content'] = content;
    if (questions != null) {
      map['questions'] = questions.map((v) => v.toJson()).toList();
    }
    map['description'] = description;
    return map;
  }

}

class Questions {
  Questions({
      this.content
    }){
    this.varinats =<Varinats>[Varinats()];
  }


   String? content="";
    var quantity=1.obs;
   late List<Varinats> varinats;
   int timeAllowed=0;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['content'] = content;
    if (varinats != null) {
      map['varinats'] = varinats.map((v) => v.toJson()).toList();
    }
    map['timeAllowed'] = timeAllowed;
    return map;
  }

}

class Varinats {
  Varinats({
  this.content="",
  this.correct=false});
  String content ="";
  bool correct=false;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['content'] = content;
    map['correct'] = correct;
    return map;
  }

}