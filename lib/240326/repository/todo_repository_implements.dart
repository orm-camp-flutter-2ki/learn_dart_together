import 'package:learn_dart_together/240326/data_source/todo_api.dart';
import 'package:learn_dart_together/240326/model/todo.dart';
import 'package:learn_dart_together/240326/repository/todo_repository.dart';

class TodoRepositoryImpl implements TodoRepository {
  final TodoApi _api1 = TodoApi();
  final TodoApi _api2 = TodoApi();

  @override
  Future<List<Todo>> getTodos() {
    return _api1.getTodos();
  }

  @override
  Future<List<Todo>> getCompletedTodos() async {
    List<Todo> completedTodos = await _api2.getTodos();
    List<Todo> findtodo =
        completedTodos.where((todo) => todo.completed == true).toList();
    return findtodo;
  }
}
