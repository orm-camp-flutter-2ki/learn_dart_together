import 'package:learn_dart_together/datasource/user_api.dart';
import 'package:learn_dart_together/datasource/dt_user.dart';
import 'package:test/test.dart';

void main() {
  group('TodoApi 클래스의', () {
    // Future<List<User>> getUsers() async
    test('getUsers()는 서버에 요청한 json을 List<List<User>>으로 반환한다.', () async {
      final api = UserApi();
      final expectedCompany = Company(
          name: 'Romaguera-Crona',
          catchPhrase: 'Multi-layered client-server neural-net',
          bs: 'harness real-time e-markets');
      final expected = User(
          id: 1,
          name: 'Leanne Graham',
          email: 'Sincere@april.biz',
          website: 'hildegard.org',
          company: expectedCompany);

      // When
      final users = await api.getUsers();

      // Then
      expect(users[0] == expected, true);
    });
  });
}
