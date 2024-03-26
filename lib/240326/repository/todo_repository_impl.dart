import 'package:dart_cli_practice/240325/practice/todo.dart';
import 'package:dart_cli_practice/240326/repository/todo_repository.dart';

import '../../240325/data_source/todo_api.dart';

class TodoRepositoryImpl implements TodoRepository {
  final TodoApi api = TodoApi();

  @override
  Future<List<Todo>> getTodos() async {
    return await api.getTodos();
  }

  @override
  Future<List<Todo>> getCompletedTodos() async {
    final todos = await api.getTodos();
    return todos.where((e) => e.completed == true).toList();
  }
}
