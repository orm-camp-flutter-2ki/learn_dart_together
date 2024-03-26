import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:learn_dart_together/0325/todo.dart';
import 'package:learn_dart_together/0326/data_source/todo_repository.dart';

class TodoRepositoryImpl implements TodoRepository {
  
  @override
  Future<List<Todo>> getCompletedTodos() async {
    final http.Response response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/todos?completed=true'));
    List<Todo> todoList = [];

    if (response.statusCode == 200) {
      List jsonList = jsonDecode(response.body);
      todoList = jsonList.map((e) => Todo.fromJson(e)).toList();
    } else {
      print('Request failed with status: ${response.statusCode}.');
    }

    return todoList;
  }

  @override
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
}