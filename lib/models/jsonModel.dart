class JsonModel {
  int? id;
  String? category;
  List <JsonDataModel> data=[];



  JsonModel.fromJson(Map<String, dynamic>json)
  {
    id = json['id'];
    category = json['category'];
    json['array'].forEach((element) {
      data.add(JsonDataModel.fromJson(element));
    });
  }
}

class JsonDataModel 
{
  int? id;
  String? text;
  int? count;
  String? filename;



  JsonDataModel.fromJson(Map<String, dynamic>json)
  {
    id = json['id'];
    text = json['text'];
    count = json['count'];
    filename = json['filename'];
  }
}