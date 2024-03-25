import 'dart:convert';
import 'package:http/http.dart' as http;
import '../todo.dart';

class TodoApi {
  Future<List<Todo>> getTodos() async {
    final http.Response response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/todos'));
    List<Todo> todoList = [];

    if (response.statusCode == 200) {
      List jsonList = jsonDecode(response.body);
      todoList = jsonList.map((e) => Todo.fromJson(e)).toList();
    } else {
      print('Request failed with status: ${response.statusCode}.');
    }

    return todoList;

  }

  Future<Todo> getTodo(int id) async {
    final http.Response response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/todos/$id'));
    Todo? todo;

    if (response.statusCode == 200) {
      final Map<String, dynamic> json = jsonDecode(response.body);
      todo = Todo.fromJson(json);
    } else {
      print('Request failed with status: ${response.statusCode}.');
      throw Exception('Todo is null');
    }

    return todo;
  }
}