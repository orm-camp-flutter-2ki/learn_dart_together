import 'dart:convert';

import 'package:http/http.dart' as http;

import './model/todo.dart';

void main() async {
  TodoApi todo = TodoApi();
  await todo.getTodos();
  await todo.getTodo(1);
}

class TodoApi {
  Future<List<Todo>> getTodos() async {
    final response =
        await http.get(Uri.parse('https://jsonplaceholder.typicode.com/todos'));

    if (response.statusCode == 200) {
      List json = jsonDecode(response.body);
      //== final json = jsonDecode(response.body) as List;
      List<Todo> data = json.map((json) => Todo.fromJson(json)).toList();
      return data;
    } else {
      throw Exception('Response 에러');
    }
  }

  Future<Todo> getTodo(int id) async {
    final response = await http
        .get(Uri.parse('https://jsonplaceholder.typicode.com/todos/$id'));
    if (response.statusCode == 200) {
      Map<String, dynamic> json = jsonDecode(response.body);
      Todo data = Todo.fromJson(json);
      return data;
    } else {
      throw Exception('Response 에러');
    }
  }
}
