import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:learn_dart_together/240325/todo.dart';

class TodoApi {
  Future<List<Todo>> getTodos() async {
    final http.Response response =
        await http.get(Uri.parse('https://jsonplaceholder.typicode.com/todos'));
    final List jsonList = jsonDecode(response.body) as List;

    return jsonList.map((e) => Todo.fromJson(e)).toList();
  }

  Future<Todo> getTodo(int id) async {
    final http.Response response = await http
        .get(Uri.parse('https://jsonplaceholder.typicode.com/todos/$id'));
    final Map<String, dynamic> map = jsonDecode(response.body);

    return Todo.fromJson(map);
  }
}
