import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:learn_dart_together/24_03_25/DTO/todo.dart';
import 'package:learn_dart_together/24_03_25/DTO/todo_list.dart';

class TodoApi {
  Future<List<Todo>> getTodos() async {
    final http.Response response =
        await http.get(Uri.parse('https://jsonplaceholder.typicode.com/todos'));

    List jsonList = jsonDecode(response.body) as List;
    return jsonList.map((e) => Todo.fromJson(e)).toList();
  }

  Future<Todo> getTodo(int id) async {
    final http.Response response =
    await http.get(Uri.parse('https://jsonplaceholder.typicode.com/todos/$id'));

    final Map<String, dynamic> json = jsonDecode(response.body);
    return Todo.fromJson(json);
  }
}