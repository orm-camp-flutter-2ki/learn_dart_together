import 'package:learn_dart_together/24_03_25/apis/todo_api.dart';
import 'package:learn_dart_together/24_03_25/models/todo.dart';
import 'package:learn_dart_together/24_03_26/repositories/todo_repository.dart';

class TodoRepositoryImpl implements TodoRepository {
  final TodoApi _TodoApi;

  TodoRepositoryImpl(this._TodoApi);

  @override
  Future<List<Todo>> getTodos() async {
    return await _TodoApi.getTodos();
  }

  @override
  Future<List<Todo>> getCompletedTodos() async {
    final todos = await _TodoApi.getTodos();

    return todos.where((element) => element.completed).toList();
  }
}
