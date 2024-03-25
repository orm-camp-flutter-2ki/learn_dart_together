import 'package:learn_dart_together/24_03_19/-2/file_service.dart';
import 'package:learn_dart_together/24_03_21/async_practice.dart';
import 'package:learn_dart_together/24_03_21/movie.dart';
import 'package:learn_dart_together/24_03_25/apis/todo_api.dart';
import 'package:learn_dart_together/24_03_25/models/todo.dart';
import 'package:test/test.dart';

import '../fake_http_proxy.dart';

void main() {
  group('TodoApi 클래스', () {
    final TodoApi todoApi = TodoApi(http: FakeHttpProxy());

    group('getTodo 메소드는', () {
      test('https://jsonplaceholder.typicode.com/todos/1 엔드포인트에서 받은 json을 Todo 단일객체로 매핑하여 반환한다.', () async {
        // Given
        const userId = 1;
        const id = 1;
        const title = 'delectus aut autem';
        const completed = false;
        Todo expected = Todo(userId: userId, id: id, title: title, completed: completed);


        // When
        Todo result = await todoApi.getTodo(id);

        // Then
        expect(result, expected);
      });
    });
  });
}
