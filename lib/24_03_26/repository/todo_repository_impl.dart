import '../model/todo.dart';
import '../data_source/todo_api.dart';
import 'todo_repository.dart';

class TodoRepositoryImpl implements TodoRepository {
  final TodoApi _api = TodoApi();

  @override
  Future<List<Todo>> getTodos() async {
    return await _api.getTodos();
  }

  @override
  Future<List<Todo>> getCompletedTodos() async {
    return await _api.getCompletedTodos();
  }
}
