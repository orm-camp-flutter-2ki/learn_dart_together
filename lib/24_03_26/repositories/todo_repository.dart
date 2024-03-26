import 'package:learn_dart_together/24_03_25/models/todo.dart';

abstract interface class TodoRepository {
  Future<List<Todo>> getTodos();

  Future<List<Todo>> getCompletedTodos();
}
