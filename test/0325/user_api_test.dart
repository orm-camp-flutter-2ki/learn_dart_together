import 'package:collection/collection.dart';
import 'package:learn_dart_together/0325/source/user_api.dart';
import 'package:learn_dart_together/0325/model/user_data_class.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

Future<void> main() async {
  group('todo Api', () {
    final UserApi userApi = UserApi();
    final eq = DeepCollectionEquality().equals;

    test('특정 id 메서드', () async {
      final expectedResult = User(
          id: 1,
          name: 'Leanne Graham',
          username: 'Bret',
          email: 'Sincere@april.biz',
          address: Address(
              street: 'Kulas Light',
              suite: 'Apt. 556',
              city: 'Gwenborough',
              zipcode: '92998-3874',
              geo: Geo(lat: '-37.3159', lng: '81.1496')),
          phone: '1-770-736-8031 x56442',
          website: 'hildegard.org',
          company: Company(
              name: 'Romaguera-Crona',
              catchPhrase: 'Multi-layered client-server neural-net',
              bs: 'harness real-time e-markets'));

      final actualResult = await userApi.getUser(1);

      expect(eq(actualResult, expectedResult), true);
    });

    test('전체 길이가 10인지', () async {
      final actualResult = await userApi.getUsers();
      expect(actualResult.length, 10);
    });
  });
}
