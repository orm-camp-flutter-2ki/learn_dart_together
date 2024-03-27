import 'dart:convert';
import '../24_03_25/todo.dart';
import '../http/http_core.dart';

/// 데이터를 돌려주는 기능을 하는 클래스
class TodoApi {
  Future<String> getTodos() async {
    return await HttpService().get(todosUrl);
  }

  Future<Todo> getTodo(int id) async {
    final response = await HttpService().get('$todosUrl/$id');
    final Map<String, dynamic> json = jsonDecode(response);
    return Todo.fromJson(json);
  }
}
