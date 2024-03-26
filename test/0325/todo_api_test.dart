import 'dart:convert';

import 'package:collection/collection.dart';
import 'package:learn_dart_together/0325/source/todo_api.dart';
import 'package:learn_dart_together/0325/model/todo_data_class.dart';
import 'package:test/scaffolding.dart';
import 'package:test/expect.dart';

Future<void> main() async {
  group('todo Api', () {
    final TodoApi todoApi = TodoApi();
    final eq = DeepCollectionEquality().equals;

    test('특정 id 메서드', () async {
      final expectedResult =
          Todo(userId: 1, id: 1, title: 'delectus aut autem', completed: false);

      final actualResult = await todoApi.getTodo(1);

      expect(eq(actualResult, expectedResult), true);
    });

    test('전체 길이가 200인지', () async {
      final actualResult = await todoApi.getTodos();
      expect(actualResult.length, 200);
    });

    test('wifi 끊겼을 때', () async {
      try {
        final List<Todo> todos = await todoApi.getTodos();
        // final List<User> todos = await todoApi.getTodos();
      } catch (e) {
        print('[ClientException error]\n$e');
      }
    });


  });
}
