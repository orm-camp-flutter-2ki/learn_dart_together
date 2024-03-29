import 'package:learn_dart_together/0325/model/todo_model.dart';
import 'package:learn_dart_together/0325/data_source/todo_api.dart';

import 'todo_repository.dart';

class TodoRepositoryImpl implements TodoRepository {
  final TodoApi _todoApi = TodoApi();

  @override
  Future<List<Todo>> getTodos() async {
    return await _todoApi.getTodosApi();
  }

  @override
  Future<List<Todo>> getTodo(int id) async {
    return await _todoApi.getTodoApi(1);
  }

  @override
  Future<List<Todo>> getCompletedTodos() async {
    return await _todoApi.getTodoCompletedTodosApi(true);
  }
}

void main() async {
  TodoRepository todoRepository = TodoRepositoryImpl();

  // List<Todo> todos = await todoRepository.getTodos();
  // List<Todo> todos = await todoRepository.getTodo(1);
  // List<Todo> todos = await todoRepository.getCompletedTodos();

  // todos.forEach((print));
}
