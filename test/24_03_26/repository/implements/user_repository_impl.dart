import 'package:http/testing.dart';
import 'package:learn_dart_together/24_03_25/DTO/user.dart';
import 'package:learn_dart_together/24_03_25/data_source/user_api.dart';
import 'package:learn_dart_together/24_03_26/repository/implements/user_repository_impl.dart';
import 'package:learn_dart_together/24_03_26/repository/interface/user_repository.dart';
import 'package:test/test.dart';
import 'package:http/testing.dart';
import 'package:http/http.dart' as http;

void main() {
  group('UserRepository 메서드 테스트', () {

    test('getUsersList() 메서드 테스트', () async {
      UserRepository repo = UserRepositoryImpl(UserApi());
      final List<User> userList =  await repo.getUserList();

      expect(userList.length, 10);
    });

    test('getUsersTop10ByUserName() 메서드 테스트', () async {
      UserRepository repo = UserRepositoryImpl(UserApi());
      final List<User> userList =  await repo.getUserTop10ByUserName();

      final String expectValue = 'Chelsey Dietrich';

      expect(userList[0].name, expectValue);
    });

    test('getUsersList() 메서드 테스트', () async {
      final MockClient mockClient = MockClient((request) async {
        if (request.url.toString() == 'https://jsonplaceholder.typicode.com/users') {
          return http.Response(mockData, 200, headers: {
            'content-type' : 'application/json; charset=utf-8'
          });
        }

        return http.Response('''{"message":"잘못된 요청"}''', 400);
      });

      UserRepository repo = UserRepositoryImpl(UserApi(client: mockClient));
      final List<User> userList =  await repo.getUserList();

      final String expectValue = 'Leanne Graham';

      expect(userList[0].name, expectValue);
    });
  });
}

final String mockData = '''
[
  {
    "id": 1,
    "name": "Leanne Graham",
    "username": "Bret",
    "email": "Sincere@april.biz",
    "address": {
      "street": "Kulas Light",
      "suite": "Apt. 556",
      "city": "Gwenborough",
      "zipcode": "92998-3874",
      "geo": {
        "lat": "-37.3159",
        "lng": "81.1496"
      }
    },
    "phone": "1-770-736-8031 x56442",
    "website": "hildegard.org",
    "company": {
      "name": "Romaguera-Crona",
      "catchPhrase": "Multi-layered client-server neural-net",
      "bs": "harness real-time e-markets"
    }
  }
 ]
''';