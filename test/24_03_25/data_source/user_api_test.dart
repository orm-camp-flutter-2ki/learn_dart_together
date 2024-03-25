import 'package:learn_dart_together/24_03_25/DTO/user.dart';
import 'package:learn_dart_together/24_03_25/data_source/user_api.dart';
import 'package:test/test.dart';

void main() {
  group('User JSON 파싱 테스트', () {
    UserApi userApi = UserApi();

    test('UserApi 의 getUser 메서드가 잘 동작하는지', () async {
      List jsonList = await userApi.getUser();

      expect(jsonList is List, true);
    });

    test('User DTO의 userInfo 필드의 length 는 10이다.', () async {
      List jsonList = await userApi.getUser();
      User user = User.fromJson(jsonList);

      expect(user.userInfo.length, 10);
    });
  });
}
