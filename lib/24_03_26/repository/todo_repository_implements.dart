import '../data_source/todo_api.dart';
import '../model/todo.dart';
import 'todo_repository.dart';

class TodoRepositoryImplements implements TodoRepository {
  final TodoApi _api = TodoApi();

  @override
  Future<List<Todo>> getTodos() {
    return _api.getTodos();
  }

  @override
  Future<List<Todo>> getCompletedTodos() {
    return _api.getCompletedTodos();
  }
}
