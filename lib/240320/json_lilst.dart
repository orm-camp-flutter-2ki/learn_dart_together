import 'dart:convert';

void main(){
  String jsonString = '''
  {
    "name": "홍길동",
    "hobby":["축구","농구"]
  }
  ''';

  Map<String, dynamic> json = jsonDecode(jsonString);
  List hobbies = json['hobby'];

  List<String> results = hobbies.map((e) => e as String).toList();

  print(results);

}