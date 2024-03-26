
import 'package:test/test.dart';
import 'package:untitled2/240325/data_source/todo_api.dart';
import 'package:untitled2/240325/repository/todo_repository_impl.dart';

  void main() {
    test('Todo Test', () async {

      TodoApi todoApi = TodoApi();
      TodoRepositoryImpl repoimpl = TodoRepositoryImpl();
      final todos = await todoApi.getTodos();
      final todo = await todoApi.getTodo(1);
      final imple = repoimpl.getCompletedTodos();

      print(imple);
    });
  }

