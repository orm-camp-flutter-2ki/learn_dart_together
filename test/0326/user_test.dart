import 'dart:math';

import 'package:learn_dart_together/0325/user.dart';
import 'package:learn_dart_together/0326/data_source/user_repository.dart';
import 'package:learn_dart_together/0326/data_source/user_repository_impl.dart';
import 'package:test/test.dart';

void main() {
  UserRepository userRepository = UserRepositoryImpl();

  test('모든 user 요청', () async {
    List<User> users = await userRepository.getUsers();

    expect(users.length, 10);
  });

  test('username 기준으로 정렬 후 상위 10개 user 확인', () async {
    List<User> users = await userRepository.getUsersTop10ByUserName();

    expect(users.length, 10);
    expect(users.first.username, 'Antonette');
    expect(users[1].username, 'Bret');
  });
}
