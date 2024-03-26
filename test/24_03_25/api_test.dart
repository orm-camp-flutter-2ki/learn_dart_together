import 'package:learn_dart_together/24_03_25/todo.dart';
import 'package:learn_dart_together/24_03_25/user.dart';
import 'package:learn_dart_together/data_source/todo_api.dart';
import 'package:learn_dart_together/data_source/user_api.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  group('api 테스트', () {
    test('Q1, 간단한 json을 데이터 클래스로 변환', () async {
      Todo todo = await TodoApi().getTodo(1);

      expect(todo.title == 'delectus aut autem', true);
    });

    test('Q2, json List를 List<Todo>로 변환', () async {
      List<Todo> todos = await TodoApi().getTodos();

      expect(todos[0].id == 1, true);
    });

    test('Q3, json List를 List<Todo>로 변환', () async {
      List<User> users = await UserApi().getUsers();

      expect(users[0].id == 1, true);
    });

  });
}
