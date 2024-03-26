import 'package:learn_dart_together/24_03_26/model/todo.dart';

abstract interface class TodoRepository {
  Future<List<Todo>> getTodos();

  Future<List<Todo>> getCompletedTodos();
}
