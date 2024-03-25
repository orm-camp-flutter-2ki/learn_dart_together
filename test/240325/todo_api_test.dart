
import 'package:test/test.dart';
import 'package:untitled2/240325/data_source/todo_api.dart';

  void main() {
    test('Todo Test', () async {

      TodoApi todoApi = TodoApi();
      final todos = await todoApi.getTodos();
      final todo = await todoApi.getTodo(1);
      print(todo);
    });
  }

