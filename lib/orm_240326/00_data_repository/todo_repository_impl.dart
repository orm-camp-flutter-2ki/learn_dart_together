import 'package:learn_dart_together/orm_240326/00_data_repository/todo_repository.dart';
import 'package:learn_dart_together/orm_240326/00_data_source/todo_api.dart';
import 'package:learn_dart_together/orm_240326/todo.dart';

class TodoRepositoryImpl implements TodoRepository {
  final TodoApi _api = TodoApi();

  @override
  Future<List<Todo>> getCompletedTodos(bool completed) async {
    final result = await _api.getCompletedTodos(completed);
    return result;
  }

  @override
  Future<List<Todo>> getTodos() async {
    final result = await _api.getTodos();
    return result;
  }
}
