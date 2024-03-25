import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:learn_dart_together/24_03_25/data_source/task1_todo.dart';

class TodoApi {
  Future<List> getTodos() async {
    final http.Response res = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/todos/1'));

    List madeJsonList = jsonDecode(res.body);

    return madeJsonList;
  }

  Future<Todo> getTodo(int id) async {
    final http.Response res =
    await http.get(Uri.parse('https://jsonplaceholder.typicode.com/todos/$id'));

    final Map<String, dynamic> json = jsonDecode(res.body);
    return Todo.fromJson(json);
  }
}