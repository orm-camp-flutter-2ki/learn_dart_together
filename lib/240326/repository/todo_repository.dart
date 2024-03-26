import 'package:learn_dart_together/240326/data_source/todos_api.dart';
import 'package:learn_dart_together/240326/model/todos.dart';

abstract interface class TodoRepository {
  Future<List<Todo>> getTodos();

  Future<List<Todo>> getCompletedTodos();
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
    return data.where((e) => e.completed == true).toList();
  }
}

void main() async {
  List<Todo> todoList = await TodoRepositoryImpl().getTodos();
  List<Todo> todoCompletedList = await TodoRepositoryImpl().getCompletedTodos();
  // print(todoList);
  print(todoCompletedList);
}
