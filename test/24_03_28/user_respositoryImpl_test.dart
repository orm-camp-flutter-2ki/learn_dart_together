import 'package:learn_dart_together/24_03_28/model/user.dart';
import 'package:learn_dart_together/24_03_28/repository/user_repository.dart';
import 'package:learn_dart_together/24_03_28/repository/user_repositoryImpl.dart';
import 'package:test/test.dart';

void main() {
  test('practice1', () async {
    User testUser = User(
        name: 'Leanne Graham',
        email: 'Sincere@april.biz',
        latitude: -37.3159,
        longitude: 81.1496);
    UserRepository userRepository = UserRepositoryImpl();
    final test = await userRepository.getUsers();
    expect(test[0] == testUser, true);
  });
}
