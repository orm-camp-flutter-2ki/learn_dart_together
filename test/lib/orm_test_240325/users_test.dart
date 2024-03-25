import 'package:learn_dart_together/orm_240325/data_source/users_api.dart';
import 'package:test/test.dart';

void main() {
  final usersApi = UserApi();
  test('User List 형태 변환', () async {
    final users = await usersApi.getUsers();
    print(users);
  });
  test('Users List 타입이 List<users>인지 확인', () async {
    final userRuntime = UserApi().runtimeType;

    expect(userRuntime, 'List<User>');
  });
  test('User List 한개 확인', () async {
    final id = 1;
    final user = await usersApi.getUser(id);
    print(user);

    expect(user.name, 'Leanne Graham');
  });
}
