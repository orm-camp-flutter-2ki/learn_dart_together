import 'dart:convert';
import 'dart:io';

import 'package:collection/collection.dart';
import 'package:learn_dart_together/240326/impl/todo_repository_impl.dart';
import 'package:learn_dart_together/240326/model/todo.dart';
import 'package:test/test.dart';

void main() {
  group('Todo Test', () {
    final repository = TodoRepositoryImpl();
    List json = jsonDecode(File('test/240326/resource/expected_todo.json').readAsStringSync());
    final expected = json.map((e) => Todo.fromJson(e)).toList();

    test('List 비교', () async {
      final todos = await repository.getTodos();

      expect(todos.equals(expected), true);
    });

    test('첫 번째 Index 비교', () async {
      final todos = await repository.getTodos();

      expect(todos[0] == expected[0], true);
      expect(todos[0].title == expected[0].title, true);
    });

    test('getCompletedTodos 확인', () async {
      final todos = await repository.getCompletedTodos();

      todos.forEach((element) => expect(element.completed, true));
    });
  });
}