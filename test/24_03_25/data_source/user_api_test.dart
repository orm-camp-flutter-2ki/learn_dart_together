import 'package:learn_dart_together/24_03_25/DTO/user.dart';
import 'package:learn_dart_together/24_03_25/data_source/user_api.dart';
import 'package:test/test.dart';

void main() {
  group('User JSON 파싱 테스트', () {
    UserApi userApi = UserApi();


    test('User DTO의 userInfo 필드의 length 는 10이다.', () async {
      List<User> userList = await userApi.getUsers();

      expect(userList.length, 10);
    });
  });
}
