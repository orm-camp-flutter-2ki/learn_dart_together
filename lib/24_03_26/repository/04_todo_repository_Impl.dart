import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:learn_dart_together/24_03_26/repository/04_todo_repository.dart';

import '../../24_03_25/02_todo.dart';

void main() async {
  final completedTodos = await TodoRepositoryImpl().getCompletedTodos(true);
  print(completedTodos);
}

class TodoRepositoryImpl implements TodoRepository {
  @override
  Future<List<Todo>> getTodos() async {
    final http.Response response =
        await http.get(Uri.parse('https://jsonplaceholder.typicode.com/todos'));

    // response.body == Json String
    List jsonList = jsonDecode(response.body);
    return jsonList.map((e) => Todo.fromJson(e)).toList();
  }

  @override
  Future<List<Todo>> getCompletedTodos(bool completed) async {
    final http.Response response =
        await http.get(Uri.parse('https://jsonplaceholder.typicode.com/todos'));
    // response.body == Json String

    List jsonList = jsonDecode(response.body);

    return jsonList
        .map((e) => Todo.fromJson(e))
        .where((e) => e.completed)
        .toList();
  }
}
