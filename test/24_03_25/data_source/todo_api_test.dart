import 'dart:math';

import 'package:learn_dart_together/24_03_25/DTO/todo.dart';
import 'package:learn_dart_together/24_03_25/DTO/todo_list.dart';
import 'package:learn_dart_together/24_03_25/data_source/todo_api.dart';
import 'package:test/test.dart';

void main() {
  group('todo api 호출 테스트', () {
    TodoApi todoApi = TodoApi();

    test('getTodo 메서드를 호출하면 Todo 객체를 반환한다.', () async {
      Todo todo = await todoApi.getTodo(1);

      expect(todo is Todo, true);
    });

    test('getTodo의 파라미터의 n 을 넣으면, todo.id = n가 나온다.', () async {
      int randomInt = 1 + Random().nextInt(10);
      Todo todo = await todoApi.getTodo(randomInt);

      expect(todo.id == randomInt, true);
    });

    test('getTodos 메서드 호출하면 List를 반환한다.',() async {
      List jsonList = await todoApi.getTodos();

      expect(jsonList is List, true);
    });

    test('getTodos로 받은 list로 TodoList의 todoList 필드의 length 는 200개다.',() async {
      List jsonList = await todoApi.getTodos();
      TodoList todoList = TodoList.fromJson(jsonList);

      expect(todoList.todoList.length, 200);
    });
  });
}