import 'package:learn_dart_together/24_03_25/02_user.dart';
import 'package:learn_dart_together/data_source/user_api.dart';
import 'package:test/scaffolding.dart';

void main() {
  test('Users 테스트', () async {
    final UserApi userApi = UserApi();
    final List<User> users = await userApi.getUsers();

    for (User user in users) {
      print('${user.toJson()}');
    }
  });
}