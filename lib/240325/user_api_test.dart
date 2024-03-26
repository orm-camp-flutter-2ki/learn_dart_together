import 'package:test/test.dart';
import 'package:untitled2/240325/data_source/user_api.dart';
import 'package:untitled2/240325/repository/user_repository_impl.dart';

void main() {
  test('User Test', () async {
    UserRepositoryImpl imple = UserRepositoryImpl();
    UserApi userApi = UserApi();
    final users = await userApi.getUsers();
    final user = await userApi.getUser(1);
    final impl = await imple.getUsers();
    final imples = await imple.getUsersTop10ByUserName();
    print(imples);
  });
}