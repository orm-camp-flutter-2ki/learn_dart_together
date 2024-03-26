import 'package:learn_dart_together/24_03_25/data_class/task1_todo.dart';
import 'package:learn_dart_together/24_03_25/data_source/task1_todoApi.dart';
import 'package:test/test.dart';


void main() {
  group('Todo Class Tests', () {
    test('fromJson() should correctly parse JSON', () {
      final Map<String, dynamic> json = {
        'userId': 1,
        'id': 1,
        'title': 'delectus aut autem',
        'completed': false,
      };

      final Todo todo = Todo.fromJson(json);

      expect(todo.userId, 1);
      expect(todo.id, 1);
      expect(todo.title, 'delectus aut autem');
      expect(todo.completed, false);
    });

    test('toJson() should correctly encode JSON', () {
      final Todo todo = Todo(
        userId: 1,
        id: 1,
        title: 'delectus aut autem',
        completed: false,
      );

      final Map<String, dynamic> json = todo.toJson();

      expect(json['userId'], 1);
      expect(json['id'], 1);
      expect(json['title'], 'delectus aut autem');
      expect(json['completed'], false);
    });

    test('copyWith() should return a new Todo instance with modified fields', () {
      final Todo originalTodo = Todo(
        userId: 1,
        id: 1,
        title: 'delectus aut autem',
        completed: false,
      );

      final Todo modifiedTodo = originalTodo.copyWith(title: 'New Title');

      expect(modifiedTodo.userId, originalTodo.userId);
      expect(modifiedTodo.id, originalTodo.id);
      expect(modifiedTodo.title, 'New Title');
      expect(modifiedTodo.completed, originalTodo.completed);
    });
  });

  group('TodoApi Class Tests', () {
    test('getTodo() should fetch and parse Todo from API', () async {
      final TodoApi todoApi = TodoApi();

      final Todo todo = await todoApi.getTodo(1);

      expect(todo.userId, isNotNull);
      expect(todo.id, isNotNull);
      expect(todo.title, isNotNull);
      expect(todo.completed, isNotNull);
    });
  });
}