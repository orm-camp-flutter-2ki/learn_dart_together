import 'package:learn_dart_together/24_03_25/todos/todo.dart';
import 'package:learn_dart_together/24_03_25/todos/todo_api.dart';

void main() async {
  List<Todo> toDos = await TodoApi().getTodos();
  Todo toDoIdOne = await TodoApi().getTodo(1);

  print(toDos);
  print(toDoIdOne);
}
