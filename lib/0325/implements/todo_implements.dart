import 'package:learn_dart_together/0325/model/todo_model.dart';
import 'package:learn_dart_together/0325/source/todo_api.dart';

import '../repository/todo_repository.dart';

class TodoRepositoryImpl implements TodoRepository {
  final TodoApi _todoApi = TodoApi();

  @override
  Future<List<Todo>> getTodos() {
    return _todoApi.getTodosApi();
  }

  @override
  Future<List<Todo>> getTodo(int id) {
    return _todoApi.getTodoApi(1);
  }

  @override
  Future<List<Todo>> getCompletedTodos() {
    return _todoApi.getTodoCompletedTodosApi(true);
  }
}
