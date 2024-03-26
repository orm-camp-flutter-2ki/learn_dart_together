import 'dart:convert';

import '../data_source/todo.dart';
import 'package:http/http.dart' as http;

class TodoApi {
  Future<List<Todo>> getTodos() async {
    final response =
        await http.get(Uri.parse('https://jsonplaceholder.typicode.com/todos'));
    final jsonlist = jsonDecode(response.body) as List;
    return jsonlist.map((e) => Todo.fromJson(e)).toList();
  }
}
