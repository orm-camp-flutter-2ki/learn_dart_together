import 'package:learn_dart_together/24_03_25/DTO/user.dart';
import 'package:learn_dart_together/24_03_26/repository/implements/user_repository_impl.dart';
import 'package:learn_dart_together/24_03_26/repository/interface/user_repository.dart';
import 'package:test/test.dart';

void main() {
  group('UserRepository 메서드 테스트', () {
    UserRepository repo = UserRepositoryImpl();

    test('getUsers() 메서드 테스트', () async {
      final List<User> userList =  await repo.getUsers();

      expect(userList.length, 10);
    });

    test('getUsersTop10ByUserName() 메서드 테스트', () async {
      final List<User> userList =  await repo.getUserTop10ByUserName();

      final String expectValue = 'Chelsey Dietrich';

      expect(userList[0].name, expectValue);
    });
  });
}