import 'dart:convert';

import 'package:http/http.dart';
import 'package:learn_dart_together/0325/todo_api.dart';
import 'package:learn_dart_together/0325/todo_data_class.dart';
import 'package:test/scaffolding.dart';
import 'package:test/expect.dart';

Future<void> main() async {
  test('200: 성공 400: 서버쪽 실패', () async {
    try {
      final TodoApi todoApi = TodoApi();
      final List<Todo> todos = await todoApi.getTodos();
      // final List<User> todos = await todoApi.getTodos();
    } catch (e) {
      print('[error]\n$e');
    }
  });
}
