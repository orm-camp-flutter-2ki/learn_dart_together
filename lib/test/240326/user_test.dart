import 'package:learn_dart_together/240326/repository/user_repository.dart';
import 'package:test/test.dart';

void main() {
  test('User Test', () async {
    final repository = UserRepositoryImpl();
    final userName = await repository.getUserTopByUserName('Bret');
    print(userName);
  });
}
