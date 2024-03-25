import 'package:test/test.dart';
import 'package:learn_dart_together/data_source/todo_api.dart';

void main() {
  group('ToDoApi', () {
    test('getTodos() returns a list of todos', () async {
      // Given
      ToDoApi todoApi = ToDoApi();
      // When
      List<Todo> todos = await todoApi.getTodos();
      // Then
      expect(todos, isA<List<Todo>>());
      expect(todos.length, greaterThan(0));
      expect(todos.first, isA<Todo>());
    });

    test('getTodo() returns a specific todo', () async {
      // Given
      ToDoApi todoApi = ToDoApi();
      int todoId = 1; // Change to desired todo ID
      // When
      Todo todo = await todoApi.getTodo(todoId);
      // Then
      expect(todo, isA<Todo>());
      expect(todo.id, todoId);
    });

    test('todos.first is equal to the todo with todoID=1', () async {
      // Given
      ToDoApi todoApi = ToDoApi();
      int todoId = 1;
      // When
      List<Todo> todos = await todoApi.getTodos();
      Todo todo = await todoApi.getTodo(todoId);
      // Then
      expect(todos.first, equals(todo));
    });
  });
}