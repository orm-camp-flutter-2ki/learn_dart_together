import 'package:learn_dart_together/240326/repository/p4_todo_repository.dart';

import 'model_class/p4_model_class.dart';

void main() async {
  final todoRepository = TodoRepository();

  final List<Todo> todo = await todoRepository.getTodos();
  // print(todo.length);
  // print(todo);

  // Completed Todo List
  final List<Todo> todoCompleted = await todoRepository.getCompletedTodos(true);
  print(todoCompleted.length);
  // print(todoCompleted);

  // UnCompleted Todo List
  final List<Todo> todoCompletedYet =
      await todoRepository.getCompletedTodos(false);
  print(todoCompletedYet.length);
  // print(todoCompletedYet);
}
