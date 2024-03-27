import 'package:learn_dart_together/24_03_26/repository/user_repository.dart';
import 'package:learn_dart_together/24_03_26/repository/user_repository_impl.dart';
import 'package:test/test.dart';

void main() {
  UserRepository userRepo = UserRepositoryImpl();

  test('User getUsers() test', () async {
    final result = await userRepo.getUsers();
    print(result);
  });

  test('User getUsersTop10ByUserName() test', () async {
    final result = await userRepo.getUsersTop10ByUserName();
    print(result);
  });
}
