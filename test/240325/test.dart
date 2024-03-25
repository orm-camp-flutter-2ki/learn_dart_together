import 'package:learn_dart_together/240325/data_source/todo_api.dart';
import 'package:learn_dart_together/240325/data_source/user.dart';
import 'package:learn_dart_together/240325/data_source/user_api.dart';
import 'package:test/test.dart';

void main() {
  test('Json 데이터클래스 생성', () async {
    try {
      final todo = await getTodo();
      print(todo.toString());
    } catch (e) {
      print('error');
    }
  });
  test('링크를 받아 List<Todo>를 출력', () async {
    try {
      final todo = await TodoList();
      print(todo.toString());
    } catch (e) {
      print('error');
    }
  });
  test('유저 List 출력', () async {
    UserApi userApi = UserApi();
    try {
      List<User> userList = await userApi.getUser();
      print(userList.toString());
    } catch (e) {
      print('error');
    }
  });
}
