class TestData {
  TestData({
     required this.testId,
     required this.checkerId,
     required this.name,
     required this.description,
     required this.questions});

  factory TestData.fromJson(dynamic json) {
   var testId = json['testId'];
   var checkerId = json['checkerId'];
   var name = json['name'];
   List<Questions> questions =[];
   var description = json['description'];
    if (json['questions'] != null) {

      json['questions'].forEach((v) {
        questions.add(Questions.fromJson(v));
      });
    }
    return TestData(testId: testId, checkerId: checkerId, name: name, description: description, questions: questions);
  }
  final int testId;
  final int checkerId;
  final String name;
  final String description;
   List<Questions> questions=[];

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['testId'] = testId;
    map['checkerId'] = checkerId;
    map['name'] = name;
    map['description'] = description;
    if (questions != null) {
      map['questions'] = questions.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

class Questions {
  Questions({
     required this.id,
     required this.testId,
     required this.content,
     required this.options,});

  factory Questions.fromJson(dynamic json) {
   var id = json['id'];
   var testId = json['testId'];
   var content = json['content'];
   List<Options> options = [];
    if (json['options'] != null) {
      json['options'].forEach((v) {
        options.add(Options.fromJson(v));
      });
    }
    return Questions(id: id, testId: testId, content: content, options: options);
  }
  final int id;
  final int testId;
  final String content;
  List<Options> options = [];

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['testId'] = testId;
    map['content'] = content;
    if (options != null) {
      map['options'] = options.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

class Options {
  Options({
    required   this.id,
    required   this.questionId,
    required   this.content,});

 factory  Options.fromJson(dynamic json) {
   var id = json['id'];
   var questionId = json['questionId'];
   var content = json['content'];
   return Options(id: id, questionId: questionId, content: content);
  }
  final int id;
  final int questionId;
  final String content;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['questionId'] = questionId;
    map['content'] = content;
    return map;
  }

}