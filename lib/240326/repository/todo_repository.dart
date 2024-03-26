import 'package:learn_dart_together/240326/data_source/todo_api.dart';
import 'package:learn_dart_together/240326/model/todo.dart';

abstract interface class TodoRepository {
  Future<List<Todo>> getTodos();

  Future<Todo> getTodo(int userId);
}

class TodoRepositoryImpl implements TodoRepository {
  final TodoApi _api = TodoApi();

  @override
  Future<Todo> getTodo(int userId) {
    return _api.getTodo(userId);
  }

  @override
  Future<List<Todo>> getTodos() {
    return _api.getTodos();
  }

  Future<List<Todo>> getCompletedTodos() async {
    final allTodos = await getTodos();
    final completedTodos = allTodos.where((e) => e.completed == true).toList();
    return completedTodos;
  }
}
