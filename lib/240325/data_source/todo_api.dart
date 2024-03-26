import 'dart:convert';

import 'package:http/http.dart' as http;

import '../todo.dart';

void main() async{
  List<Todo> todoList = await TodoApi().getTodos();
  print(todoList);
}

class TodoApi {
  // 2. Json List 를 List<Todo>로 변환
  Future<List<Todo>> getTodos() async {
    final http.Response response =
    await http.get(Uri.parse('https://jsonplaceholder.typicode.com/todos'));

    // response.body == Json String
    List jsonList = jsonDecode(response.body);
    return jsonList.map((e) => Todo.fromJson(e)).toList();
  }

  // 1. 간단한 JSON을 데이터 클래스로 변환
  Future<Todo> getTodo(int id) async {
    final http.Response response = await http
        .get(Uri.parse('https://jsonplaceholder.typicode.com/todos/$id'));
    // response.body == Json String

    final Map<String, dynamic> json = jsonDecode(response.body);
    // Decode 역직렬화한 json 출력
    print(json);
    return Todo.fromJson(json);
  }

}