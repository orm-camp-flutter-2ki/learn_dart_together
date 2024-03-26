import 'dart:convert';

import '../model/todo.dart';
import 'package:http/http.dart' as http;

class TodoApi {
  Future<Todo> getTodo(int id) async {
    final response = await http
        .get(Uri.parse('https://jsonplaceholder.typicode.com/todos/$id'));

    final json = jsonDecode(response.body);

    return Todo.fromJson(json);
  }

  Future<List<Todo>> getTodos() async {
    final response =
        await http.get(Uri.parse('https://jsonplaceholder.typicode.com/todos'));

    final jsonList = jsonDecode(response.body) as List;

    return jsonList.map((e) => Todo.fromJson(e)).toList();
  }
}
