import 'package:learn_dart_together/240325/data_source/todo_api.dart';
import 'package:learn_dart_together/240325/model/todo.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  group('Todo 데이터', () {
    TodoApi todoApi = TodoApi();

    test('과제 1. 간단한 JSON 을 데이터 클래스로 변환', () async {
      // Given
      String uri = 'https://jsonplaceholder.typicode.com/todos/1';

      // When
      Todo data = await todoApi.jsonToDataClass(uri);

      bool expectedResult = true;

      // Then
      expect(data.userId == 1, expectedResult);
    });

    test('과제2. Json List 를 List<Todo> 로 변환', () async {
      // Given
      String uri = 'https://jsonplaceholder.typicode.com/todos';
      const lastUserId = 10;
      const lastId = 200;
      const lastTitle = 'ipsam aperiam voluptates qui';
      const lastCompleted = false;

      // When
      List<Todo> todoList = await todoApi.listToListTodo(uri);

      Todo expectedResult = Todo(
        id: lastId,
        userId: lastUserId,
        title: lastTitle,
        completed: lastCompleted,
      );

      // Then
      expect(todoList.last, expectedResult);
    });
  });
}
