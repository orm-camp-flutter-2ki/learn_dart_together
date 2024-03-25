import 'package:learn_dart_together/24_03_25/apis/user_api.dart';
import 'package:learn_dart_together/24_03_25/models/address.dart';
import 'package:learn_dart_together/24_03_25/models/company.dart';
import 'package:learn_dart_together/24_03_25/models/geo.dart';
import 'package:learn_dart_together/24_03_25/models/user.dart';
import 'package:test/test.dart';

import '../fake_http_proxy.dart';

void main() {
  group('UserApi 클래스', () {
    final UserApi userApi = UserApi(http: FakeHttpProxy());

    group('getUsers 메소드는', () {
      test(
          'https://jsonplaceholder.typicode.com/users 엔드포인트에서 받은 json을 List<User>로 매핑하여 반환한다.',
          () async {
        // Given
        final User user = User(
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
        List<User> result = await userApi.getUsers();

        // Then
        expect(result.first, user);
      });
    });
  });
}
