import 'package:learn_dart_together/24_03_25/data_source/subway_api.dart';
import 'package:learn_dart_together/24_03_25/data_source/user_api.dart';
import 'package:learn_dart_together/24_03_25/model/subway_model.dart';
import 'package:learn_dart_together/24_03_25/model/todo_model.dart';
import 'package:learn_dart_together/24_03_25/model/user/user_model.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';
import 'package:learn_dart_together/24_03_25/data_source/todo_api.dart';

void main() {
  group('api test', () {
    test('todo api test', () async {
      final TodoModel todoModel = await TodoApi().getTodo(1);
      expect(todoModel, isNotNull);
    });

    test('todos api test', () async{
      final List<TodoModel> todosModel = await TodoApi().getTodos();
      expect(todosModel, isNotNull);
    });

    test('user api test', () async{
      final List<UserModel> userModel = await userApi();
      expect(userModel, isNotNull);
    });

    test('subway api test', () async {
      final List<SubwayModel> subway = await subwayApi();
      expect(subway, isNotNull);
    });
  });
}