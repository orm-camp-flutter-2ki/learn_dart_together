import 'dart:convert';
import 'dart:ffi';
import 'dart:math';

import 'package:learn_dart_together/240325/data_source/todo_api.dart';
import 'package:test/test.dart';
import 'package:learn_dart_together/240325/todo.dart';
import 'package:http/http.dart' as http;

void main() async {
  test('practice2', () async {
    TodoApi todoApi = TodoApi();
    final List<Todo> users = await todoApi.getTodos();

    expect(users[0] is Todo, true);
  });
}
