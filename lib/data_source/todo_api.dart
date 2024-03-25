import 'dart:convert';

import '../24_03_25/todo.dart';
import '../http/http_service.dart';

/// 데이터를 돌려주는 기능을 하는 클래스
class TodoApi {
  Future<List<Todo>> getTodos() async {
    final response =
        await HttpService().get('https://jsonplaceholder.typicode.com/todos');

    List jsonList = jsonDecode(response.body) as List;
    return jsonList.map((e) => Todo.fromJson(e)).toList();
  }

  Future<Todo> getTodo(int id) async {
    final response = await HttpService()
        .get('https://jsonplaceholder.typicode.com/todos/$id');
    final Map<String, dynamic> json = jsonDecode(response.body);
    return Todo.fromJson(json);
  }
}
