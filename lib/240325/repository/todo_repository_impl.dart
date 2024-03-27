import '../data_source/todo_api.dart';
import '../model/todo.dart';
import 'todo_repository.dart';

class TodoRepositoryImpl implements TodoRepository {
  TodoApi _api = TodoApi();

  @override
  Future<List<Todo>> getTodos() async {
    return _api.getTodos();
  }

  Future<Todo> getTodo(int id) async {
    return _api.getTodo(id);
  }

  Future<List<Todo>> getTodosTop3() async {
    final todos = await getTodos();
    return todos.sublist(0, 3);
  }
}
