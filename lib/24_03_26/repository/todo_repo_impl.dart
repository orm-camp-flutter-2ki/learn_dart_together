import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:learn_dart_together/24_03_26/model/todo.dart';
import 'package:learn_dart_together/24_03_26/repository/todo_repository.dart';

class TodoRepositoryImpl implements TodoRepository {
  final url = 'https://jsonplaceholder.typicode.com/todos';

  @override
  Future<List<Todo>> getTodos() async {
    final http.Response response = await http.get(Uri.parse(url));

    List<dynamic> jsonList = jsonDecode(response.body);

    return jsonList.map((e) => Todo.fromJson(e)).toList();
  }

  @override
  Future<List<Todo>> getCompletedTodos() async {
    final http.Response response = await http.get(Uri.parse(url));

    List<dynamic> jsonList = jsonDecode(response.body);

    List<dynamic> selected =
        jsonList.where((todo) => todo['completed'] == true).toList();

    return selected.map((e) => Todo.fromJson(e)).toList();
  }
}
