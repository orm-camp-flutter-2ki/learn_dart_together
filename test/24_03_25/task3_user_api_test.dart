import 'package:learn_dart_together/24_03_25/data_source/task3_user_api.dart';
import 'package:test/test.dart';
import 'package:learn_dart_together/24_03_25/data_class/task3_user.dart';

void main() {
  group('UserApi 테스트', () {
    test('getUsers 테스트', () async {
      final userApi = UserApi();

      // getUsers 메서드 호출
      final users = await userApi.getUsers();

      // 예상된 결과와 실제 결과 비교
      expect(users, isA<List<User>>()); // isA 는 주어진 객체가 특정 클래스의 인스턴스인지 확인하는 키워드
      expect(users.length, greaterThan(0)); // 최소한 하나 이상의 사용자가 존재하는지 확인
    });
  });
}