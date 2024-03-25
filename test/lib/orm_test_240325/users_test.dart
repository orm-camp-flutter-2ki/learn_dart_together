import 'package:learn_dart_together/orm_240325/data_source/users_api.dart';
import 'package:test/scaffolding.dart';

void main() {
  test('User List 형태 변환', () async {
    final usersApi = UserApi();
    final users = await usersApi.getUsers();
    print(users);
  });
}
