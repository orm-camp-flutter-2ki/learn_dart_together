import 'dart:convert';

import '../240325/practice/todo.dart';
import 'package:http/http.dart' as http;

class TodoApi {
  Future<List<Todo>> getTodos() async {
    final http.Response response = await http
        .get(Uri.parse('https://jsonplaceholder.typicode.com/todos'));

    List jsonList = jsonDecode(response.body);

    return jsonList.map((e) => Todo.fromJson(e)).toList();
  }

  Future<Todo> getTodo(int id) async {
    final http.Response response = await http.get(
        Uri.parse('https://jsonplaceholder.typicode.com/todos/$id'));

    return Todo.fromJson(jsonDecode(response.body));
  }
}
