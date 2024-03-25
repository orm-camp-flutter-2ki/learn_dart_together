import 'dart:convert';
import 'dart:math';

import 'package:test/test.dart';
import 'package:learn_dart_together/240325/todo.dart';
import 'package:http/http.dart' as http;
import 'package:learn_dart_together/data_source/todo_api.dart';

void main() async {
  test('practice1', () async {
    Todo practice1 = await TodoApi.getTodo(1);
    expect(practice1.id, equals('1'));
  });
}
