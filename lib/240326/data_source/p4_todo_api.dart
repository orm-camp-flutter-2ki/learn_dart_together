import 'dart:convert';

import 'package:http/http.dart' as http;

import '../model_class/p4_model_class.dart';

class TodoApi {
  Future<List<Todo>> getTodosApi() async {
    final http.Response response =
        await http.get(Uri.parse('https://jsonplaceholder.typicode.com/todos'));

    List jsonList = await jsonDecode(response.body);
    return jsonList.map((e) => Todo.fromJson(e)).toList();
  }

  Future<List<Todo>> getCompletedTodosApi(bool completed) async {
    final http.Response response =
        await http.get(Uri.parse('https://jsonplaceholder.typicode.com/todos'));

    List jsonList = await jsonDecode(response.body);
    List<Todo> filteredCompleted = jsonList
        .map((e) => Todo.fromJson(e))
        .where((todo) => todo.completed == completed)
        .toList();

    return filteredCompleted;
  }
}
