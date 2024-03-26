import 'package:test/test.dart';

import '../../240325/dart_source/user_api.dart';

void main() {
  test('api Test', () async {
    final userApi = UserApi();
    final users = await userApi.getUsers();
    print(users);
    final user = await userApi.getUser(1);
    print(user);
  });
}
