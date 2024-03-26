import 'package:learn_dart_together/24_03_25/apis/user_api.dart';
import 'package:learn_dart_together/24_03_25/models/address.dart';
import 'package:learn_dart_together/24_03_25/models/company.dart';
import 'package:learn_dart_together/24_03_25/models/geo.dart';
import 'package:learn_dart_together/24_03_25/models/user.dart';
import 'package:learn_dart_together/24_03_26/repositories/user_repository_impl.dart';
import 'package:test/test.dart';

import '../../24_03_25/fake_http_proxy.dart';

void main() {
  group('UserRepositoryImpl 클래스', () {
    final UserRepositoryImpl userRepository =
        UserRepositoryImpl(UserApi(http: FakeHttpProxy()));
    group('getUsers 메소드는', () {
      test('userApi.getUsers 메소드를 호출하고 List<User>를 반환한다.', () async {
        // Given
        final User expected = User(
            id: 1,
            name: 'Leanne Graham',
            username: 'Bret',
            email: 'Sincere@april.biz',
            address: Address(
                street: "Kulas Light",
                suite: "Apt. 556",
                city: "Gwenborough",
                geo: Geo(
                  lat: "-37.3159",
                  lng: "81.1496",
                ),
                zipcode: "92998-3874"),
            phone: "1-770-736-8031 x56442",
            website: "hildegard.org",
            company: Company(
                name: "Romaguera-Crona",
                catchPhrase: "Multi-layered client-server neural-net",
                bs: "harness real-time e-markets"));

        // When
        final result = await userRepository.getUsers();

        // Then
        expect(result.first, expected);
      });
    });

    group('getUsersTop10ByUserName 메소드는', () {
      test(
          'userApi.getUsers 메소드를 호출하고 username이 긴 순서대로 정렬해서 10개의 user list를 반환한다.',
          () async {
        // Given
        final expectedSize = 10;
        final User expected = User(
            id: 3,
            name: 'Clementine Bauch',
            username: 'Samantha',
            email: 'Nathan@yesenia.net',
            address: Address(
                street: 'Douglas Extension',
                suite: 'Suite 847',
                city: 'McKenziehaven',
                zipcode: '59590-4157',
                geo: Geo(lat: '-68.6102', lng: '-47.0653')),
            phone: '1-463-123-4447',
            website: 'ramiro.info',
            company: Company(
                name: 'Romaguera-Jacobson',
                catchPhrase: 'Face to face bifurcated interface',
                bs: 'e-enable strategic applications'));

        // When
        final result = await userRepository.getUsersTop10ByUserName();

        // Then
        expect(result.first, expected);
        expect(result.length, expectedSize);
      });
    });
  });
}
