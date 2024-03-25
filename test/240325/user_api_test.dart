import 'package:test/test.dart';
import 'package:untitled2/240325/data_source/user_api.dart';

void main() {
  test('User Test', () async {

    UserApi userApi = UserApi();
    final users = await userApi.getUsers();
    final user = await userApi.getUser(1);
    print(user);
  });
}