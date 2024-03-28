import 'package:learn_dart_together/0328/data_source/user_api.dart';
import 'package:learn_dart_together/0328/model/user.dart';
import 'package:test/test.dart';

void main() {
  test('유저 정보 확인', () async {
    User expected = User(name: 'Leanne Graham', email: 'Sincere@april.biz', latitude: -37.3159, longitude: 81.1496);
    User expected2 = User(name: 'Clementina DuBuque', email: 'Rey.Padberg@karina.biz', latitude: -38.2386, longitude: 57.2232);
    UserApi userApi = UserApi();
    List<User> users = await userApi.getUsers();

    expect(users.first, expected);
    expect(users.last, expected2);
  });
}