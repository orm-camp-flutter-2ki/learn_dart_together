import 'dart:convert';
import 'dart:io';

import 'package:collection/collection.dart';
import 'package:learn_dart_together/240326/impl/user_repository_impl.dart';
import 'package:learn_dart_together/240326/model/user/user.dart';
import 'package:test/test.dart';

void main() {
  group('User Test', () {
    final repository = UserRepositoryImpl();
    List json = jsonDecode(File('test/240326/resource/expected_user.json').readAsStringSync());
    final expected = json.map((e) => User.fromJson(e)).toList();

    test('List 비교', () async {
      final users = await repository.getUsers();

      expect(users.equals(expected), true);
    });

    test('첫 번째 Index 비교', () async {
      final users = await repository.getUsers();

      expect(users[0] == expected[0], true);
      expect(users[0].username == expected[0].username, true);
    });

    test('getUsersTop10ByUserName() List length 확인', () async {
      final users = await repository.getUsersTop10ByUserName();

      expect(users.length == 10, true);
    });
  });
}