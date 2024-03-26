import 'package:learn_dart_together/240325/data_source/todo_api.dart';

import '../model/todo.dart';

abstract interface class TodoRepository {
  Future<List<Todo>> getTodos();
}

class CloudTodoRepositoryImpl implements TodoRepository {
  @override
  Future<List<Todo>> getTodos() async {
    return [];
  }
}

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

void main() async {
  // final TodoRepository todoRepository = TodoRepositoryImpl();
  final TodoRepository todoRepository = CloudTodoRepositoryImpl();

  List<Todo> todos = await todoRepository.getTodos();

  // final Todo todo = await todoRepository.getTodo(1);
  // print(todo);
  //
  // final todos = await todoRepository.getTodosTop3();
  // print(todos.length);
}
