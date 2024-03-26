import 'package:learn_dart_together/240326/data_source/p4_todo_api.dart';

import '../model_class/p4_model_class.dart';

class TodoRepository {
  final TodoApi _api = TodoApi();

  Future<List<Todo>> getTodos() {
    return _api.getTodosApi();
  }

  Future<List<Todo>> getCompletedTodos(bool completed) {
    return _api.getCompletedTodosApi(completed);
  }
}
