import 'package:learn_dart_together/%EC%A0%95%EB%8B%A4%ED%9D%AC/24_03_25/data_source/todo.dart';
import 'package:learn_dart_together/%EC%A0%95%EB%8B%A4%ED%9D%AC/24_03_25/data_source/todo_api.dart';
import 'package:learn_dart_together/%EC%A0%95%EB%8B%A4%ED%9D%AC/24_03_25/data_source/user_api.dart';
import 'package:test/test.dart';

void main() {
  setUp(() => null);
  tearDown(() => null);

  group('json 을 데이터 클래스로 변환', () {
    test('single todo', () async {
      // 왜 TodoApi.getTodo(1) 하면 에러 ????
      final todo1 = await TodoApi().getTodo(1);
      // Q :! 를 쓰지않고 처리할 수 있는 방법은 없을까???
      // A : statuscode !=200 이거나 catch  조건일 경우 예외를 던지는 방식을 사용
      // 그러면 반환 타입을 Future<Todo>로 지정할 수 있음.
      expect(todo1.id, 1);
      expect(todo1.userId, 1);
      expect(todo1.title, "delectus aut autem");
      expect(todo1.completed, false);
    });

    test('list todos', () async {
      final todos = await TodoApi().getTodos();
      expect(todos.length, 200);
    });
  });

  group('users ', () {
    test('user', () async {
      final users = await UserApi().getUsers();
      expect(users!.length, 10);
    });
  });
}
