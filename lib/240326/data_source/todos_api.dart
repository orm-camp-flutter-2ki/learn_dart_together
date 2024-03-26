import 'dart:convert';

import 'package:http/http.dart' as http;

import '../model/todos.dart';

class TodoApi {
  Future<List<Todo>> getTodos() async {
    final response =
        await http.get(Uri.parse('https://jsonplaceholder.typicode.com/todos'));
    // List<Photo> data = [];

    if (response.statusCode == 200) {
      List json = jsonDecode(response.body) as List;

      List<Todo> data = json.map((json) => Todo.fromJson(json)).toList();
      return data;
    } else {
      throw Exception('Response 에러');
    }
  }
}
