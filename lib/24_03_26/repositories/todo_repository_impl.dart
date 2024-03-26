import 'package:learn_dart_together/24_03_25/apis/todo_api.dart';
import 'package:learn_dart_together/24_03_25/models/todo.dart';
import 'package:learn_dart_together/24_03_26/repositories/todo_repository.dart';

class TodoRepositoryImpl implements TodoRepository {
  final TodoApi _todoApi;

  TodoRepositoryImpl(this._todoApi);

  @override
  Future<List<Todo>> getTodos() async {
    return await _todoApi.getTodos();
  }

  @override
  Future<List<Todo>> getCompletedTodos() async {
    final todos = await _todoApi.getTodos();

    return todos.where((element) => element.completed).toList();
  }
}
