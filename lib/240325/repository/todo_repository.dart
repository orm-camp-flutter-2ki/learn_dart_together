import '../model/todo.dart';
import 'cloud_todo_repository_impl.dart';

abstract interface class TodoRepository {
  Future<List<Todo>> getTodos();
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
