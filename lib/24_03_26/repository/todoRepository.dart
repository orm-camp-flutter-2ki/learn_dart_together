import 'dart:convert';

import 'package:http/http.dart' as http;

import '../../24_03_25/data_source/todo.dart';

class TodoRepository {
  Future<List<Todo>> getTodos() async {
    final http.Response response =
        await http.get(Uri.parse('https://jsonplaceholder.typicode.com/todos'));
    List jsonList = jsonDecode(response.body);

    return jsonList.map((e) => Todo.fromJson(e)).toList();
  }

  Future<List<Todo>> getCompletedTodos() async {
    final http.Response response =
        await http.get(Uri.parse('https://jsonplaceholder.typicode.com/todos'));
    List jsonList = jsonDecode(response.body);

    return jsonList
        .where((e) => e['completed'] == true)
        .map((e) => Todo.fromJson(e))
        .toList();
  }
}

void main() async {
  TodoRepository test = TodoRepository();
  final testPrint = await test.getCompletedTodos();
  print(testPrint);
}
