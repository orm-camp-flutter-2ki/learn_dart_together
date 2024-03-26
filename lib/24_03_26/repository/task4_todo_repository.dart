import 'package:learn_dart_together/24_03_26/data_source/task4_todo_api.dart';
import 'package:learn_dart_together/24_03_26/model_class/task4_todo.dart';
import '../interfaces/task4_todo_repository_interface.dart';

class TodoRepositoryImpl implements TodoRepository {
  final TodoApi _api = TodoApi();

  @override
  Future<List<Todo>> getTodos() {
    return _api.getTodos();
  }

  @override
  Future<List<Todo>> getCompletedTodos() {
    return _api.getCompletedTodos();
  }
}

Future<void> main() async {
  final todoRepository = TodoRepositoryImpl();
  final todo = await todoRepository.getTodos();

  for (final one_todo in todo) {
    print('모든 photo 데이터를 조회합니다. $one_todo\n');
  }

  final todoRepository2 = TodoRepositoryImpl();
  final todo2 = await todoRepository2.getCompletedTodos();

  for (final oneTodo in todo) {
    print('모든 photo 데이터를 조회합니다. $oneTodo\n');
  }

  print('🌸🌸🌸🌸🌸🌸🌸🌸곧 벚꽃시즌🌸🌸🌸🌸🌸🌸🌸🌸🌸');
  print('🌸🌸🌸🌸🌸🌸🌸🌸  절취선  🌸🌸🌸🌸🌸🌸🌸🌸🌸');

  for (final oneTodo in todo2) {
    print('모든 photo 데이터를 조회합니다. $oneTodo\n');
  }
}
