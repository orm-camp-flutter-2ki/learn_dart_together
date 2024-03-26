import 'package:learn_dart_together/24_03_26/model/dt_user.dart';
import 'package:learn_dart_together/24_03_26/repository/user_repository.dart';
import 'package:test/test.dart';

void main() {
  group('UserRepository 인터페이스의', () {
    group('구현체 UserRepostiroyImpl 클래스의', () {
      // Future<List<User>> getUser() async
      test('getUser()는 서버에 요청한 json을 List<User>으로 반환한다.', () async {
      final UserRepository repository = UserRepositoryImpl();
      final expected = User(
          id: 1,
          name: 'Leanne Graham',
          username: 'Bret',
          email: 'Sincere@april.biz',
          phone: '1-770-736-8031 x56442',
          website: 'hildegard.org',
          address: Address(
              city: 'Gwenborough',
              geo: Geo(
                  lat: '-37.3159',
                  lng: '81.1496'),
              street: 'Kulas Light',
              suite: 'Apt. 556',
              zipcode: '92998-3874'),
          company: Company(
              name: 'Romaguera-Crona',
              catchPhrase: 'Multi-layered client-server neural-net',
              bs: 'harness real-time e-markets'));

      // When
      final users = await repository.getUser();

      // Then
      expect(users[0] == expected, true);
      });

      // Future<List<User>> getUserTop10ByUserName() async
      test('getUserTop10ByUserName()는 서버에 요청한 json중, 이름순으로 빠른 10개의 데이터만 List<User>으로 반환한다.', () async {
        final UserRepository repository = UserRepositoryImpl();
        final expected = User(
            id: 1,
            name: 'Leanne Graham',
            username: 'Bret',
            email: 'Sincere@april.biz',
            phone: '1-770-736-8031 x56442',
            website: 'hildegard.org',
            address: Address(
                city: 'Gwenborough',
                geo: Geo(
                    lat: '-37.3159',
                    lng: '81.1496'),
                street: 'Kulas Light',
                suite: 'Apt. 556',
                zipcode: '92998-3874'),
            company: Company(
                name: 'Romaguera-Crona',
                catchPhrase: 'Multi-layered client-server neural-net',
                bs: 'harness real-time e-markets'));

        // When
        final users = await repository.getUserTop10ByUserName();

        // Then
        expect(users[1] == expected, true);
      });
    });
  });
}
