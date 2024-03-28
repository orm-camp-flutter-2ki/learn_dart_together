import 'package:learn_dart_together/240326/repository/user_repository.dart';
import 'package:test/test.dart';

void main() {
  test('Username이 Bret 인지  Test', () async {
    final repository = UserRepositoryImpl();
    final user = await repository.getUsers();

    print(user);
    expect(user.first.userName, 'Bret');
  });
  test('username 정렬하여 10 추출', () async {
    final repository = UserRepositoryImpl();
    final users = await repository.getUserTopByUserName();
    print(users);
  });
}
