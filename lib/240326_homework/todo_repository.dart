import 'package:learn_dart_together/240325_homework/model/todo.dart';
import 'package:learn_dart_together/240325_homework/todo_api.dart';

void main() async {
  final repo = await TodoRepositoryImpl().getCompletedTodos();
}

class TodoRepositoryImpl implements TodoRepository {
  final TodoApi _api = TodoApi();

  @override
  Future<List<Todo>> getTodos() async {
    List<Todo> data = await _api.getTodos();
    return data;
  }

  @override
  Future<List<Todo>> getCompletedTodos() async {
    List<Todo> data = await _api.getTodos();
    return data.where((element) => element.completed == true).toList();
  }
}

abstract interface class TodoRepository {
  Future<List<Todo>> getTodos();

  Future<List<Todo>> getCompletedTodos();
}
