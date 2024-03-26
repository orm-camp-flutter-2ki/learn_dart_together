import 'dart:convert';

import 'package:learn_dart_together/24_03_25/http_proxy_impl.dart';

import '../http_proxy.dart';
import '../models/todo.dart';

class TodoApi {
  static const baseUrl = 'https://jsonplaceholder.typicode.com';
  final HttpProxy http;

  TodoApi({required this.http});

  Future<Todo> getTodo(num id) async {
    final response = await http.get(Uri.parse('$baseUrl/todos/$id'));

    return Todo.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  }

  Future<List<Todo>> getTodos() async {
    final response = await http.get(Uri.parse('$baseUrl/todos'));
    return (jsonDecode(response.body) as List)
        .map((e) => Todo.fromJson(e as Map<String, dynamic>))
        .toList();
  }
}
