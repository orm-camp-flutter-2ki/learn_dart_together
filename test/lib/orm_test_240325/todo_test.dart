import 'package:learn_dart_together/orm_240325/data_source/todo_api.dart';
import 'package:test/scaffolding.dart';

void main() {
  test('todo List 변환', () async {
    final todoApi = TodoApi();
    final todos = await todoApi.getTodos();
    print(todos);
  });
}
