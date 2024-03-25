import 'package:learn_dart_together/0325/data_source/todo_api.dart';
import 'package:learn_dart_together/0325/todo.dart';
import 'package:test/test.dart';

void main() {
  TodoApi todoApi = TodoApi();

  test('Json을 데이터 클래스로 변환', () async {
    Todo todo = await todoApi.getTodo(1);

    expect(todo.userId, 1);
    expect(todo.id, 1);
    expect(todo.title, 'delectus aut autem');
    expect(todo.completed, false);
  });


}