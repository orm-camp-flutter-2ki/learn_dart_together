import 'dart:convert';

import 'package:learn_dart_together/240326/model/todo.dart';
import 'package:learn_dart_together/240326/repository/todo_repository.dart';
import 'package:learn_dart_together/240326/service/http_service.dart';

class TodoRepositoryImpl implements TodoRepository{

  @override
  Future<List<Todo>> getTodos() async {
    final result = await HttpService().callGet('https://jsonplaceholder.typicode.com/todos');
    final List jsonList = jsonDecode(result);

    return jsonList.map((e) => Todo.fromJson(e)).toList();
  }

  @override
  Future<List<Todo>> getCompletedTodos() async {
    final result = await HttpService().callGet('https://jsonplaceholder.typicode.com/todos/?completed=true');
    final List jsonList = jsonDecode(result);

    return jsonList.map((e) => Todo.fromJson(e)).toList();
  }
}