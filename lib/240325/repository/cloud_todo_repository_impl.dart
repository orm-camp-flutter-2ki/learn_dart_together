import 'package:learn_dart_together/240325/repository/todo_repository.dart';

import '../model/todo.dart';

class CloudTodoRepositoryImpl implements TodoRepository {
  @override
  Future<List<Todo>> getTodos() async {
    return [];
  }
}
