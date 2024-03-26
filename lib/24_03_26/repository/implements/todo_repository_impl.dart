import 'package:learn_dart_together/24_03_25/DTO/todo.dart';
import 'package:learn_dart_together/24_03_25/data_source/todo_api.dart';
import 'package:learn_dart_together/24_03_26/repository/interface/todo_repository.dart';

class TodoRepositoryImpl implements TodoRepository {
  final TodoApi _api = TodoApi();

  @override
  Future<List<Todo>> getTodos() async {
    return _api.getTodos();
  }

  @override
  Future<List<Todo>> getCompletedTodos() async {
    final List<Todo> list = await _api.getTodos();
    final List<Todo> filtered = list.where((e) => e.completed == true).toList();

    return filtered;
  }

}