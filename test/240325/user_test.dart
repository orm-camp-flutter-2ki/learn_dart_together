import 'package:learn_dart_together/240325/data_source/user_api.dart';
import 'package:learn_dart_together/240325/model/user/user.dart';
import 'package:test/test.dart';
//test
void main() {
  group('UserApi', () {
    final UserApi userApi = UserApi();
    final Map<String, dynamic> json = {
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
    };
    final expected = User.fromJson(json);
    test('getUser() 메소드', () async {
      print('========getUser()========');
      final result = await userApi.getUser(1);
      print(result);

      expect(result == expected, true);
    });

    test('getUserList() 메소드', () async {
      print('========getUserList()========');
      final int expectedLength = 10;
      final result = await userApi.getUserList();
      print(result.length);

      expect(result.length == expectedLength, true);
      expect(result[0] == expected, true);
    });
  });
}