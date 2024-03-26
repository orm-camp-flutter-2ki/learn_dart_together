import 'dart:convert';
import 'package:http/http.dart' as http;

import '../model/todo.dart';

class TodoApi {
  final String baseUrl = 'https://jsonplaceholder.typicode.com/todos';

  Future<List<Todo>> getTodos() async {
    final response = await http.get(Uri.parse(baseUrl));

    if (response.statusCode == 200) {
      List<dynamic> todosJson = json.decode(response.body);
      return todosJson.map((json) => Todo.fromJson(json)).toList();
    } else {
      throw Exception('실패!');
    }
  }

  Future<List<Todo>> getCompletedTodos() async {
    final response = await http.get(Uri.parse(baseUrl));

    if (response.statusCode == 200) {
      List<dynamic> todosJson = json.decode(response.body);
      List<Todo> todos = todosJson.map((json) => Todo.fromJson(json)).toList();
      return todos.sublist(0, 10 < todos.length ? 10 : todos.length);
    } else {
      throw Exception('실패!');
    }
  }
}

void main() async {
  final todoApi = TodoApi();
  final todos = await todoApi.getCompletedTodos();
  print(todos);
}
