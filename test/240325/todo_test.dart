import 'package:learn_dart_together/240325/model/todo/todo.dart';
import 'package:learn_dart_together/240325/data_source/todo_api.dart';
import 'package:test/test.dart';

void main() {
  group('TodoApi', () {
    final TodoApi todoApi = TodoApi();
    final expected = Todo(1, 1, 'delectus aut autem', false);
    test('getTodo() 메소드', () async {
      print('========getTodo()========');
      final result = await todoApi.getTodo(1);
      print(result);

      expect(result == expected, true);
    });

    test('getTodoList() 메소드', () async {
      print('========getTodoList()========');
      final int expectedLength = 200;
      final result = await todoApi.getTodoList();
      print(result.length);

      expect(result.length == expectedLength, true);
      expect(result[0] == expected, true);
    });
  });
}