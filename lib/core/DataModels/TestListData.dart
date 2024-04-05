class TestListData {
  TestListData({
      required this.testId,
      this.numberOfQuestion, 
      required this.name,
      required this.description,});

 factory TestListData.fromJson(dynamic json) {
   var testId = json['testId'];
   var numberOfQuestion = json['numberOfQuestion'];
   var name = json['name'];
   var description = json['description'];
    return TestListData(testId: testId,numberOfQuestion: numberOfQuestion, name: name, description: description);
  }
  final int testId;
  final int? numberOfQuestion;
  final String name;
  final String description;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['testId'] = testId;
    map['numberOfQuestion'] = numberOfQuestion;
    map['name'] = name;
    map['description'] = description;
    return map;
  }

}