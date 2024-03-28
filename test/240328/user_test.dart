import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:learn_dart_together/240328/data_source/mask_api.dart';
import 'package:learn_dart_together/240328/data_source/user_api.dart';
import 'package:learn_dart_together/240328/model/mask/store.dart';
import 'package:learn_dart_together/240328/model/user/user.dart';
import 'package:learn_dart_together/240328/repository/mask_repository.dart';
import 'package:learn_dart_together/240328/repository/user_repository.dart';
import 'package:test/test.dart';
import 'package:http/testing.dart';

import 'resource/user.dart';

void main() async {
  List<Map<String, dynamic>> mockList = expectedUserList;
  Map<String, dynamic> expectedUser = {
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

  group('User Test', () {
    final mockClient = MockClient((request) async {
      if (request.url.toString() == 'https://jsonplaceholder.typicode.com/users') {
        return http.Response.bytes(utf8.encode(jsonEncode(mockList)), 200);
      }
      return http.Response('''{"message": "오류"}''', 400);
    });
    UserRepository maskRepository =
    UserRepositoryImpl(api: UserApi(client: mockClient));

    test('data length check', () async {
      final users = await maskRepository.getUsers();
      expect(users.length == expectedUserList.length, true);
    });

    test('lat, lng check', () async {
      final users = await maskRepository.getUsers();
      expect(users[0].latitude == double.parse(expectedUser['address']['geo']['lat']), true);
      expect(users[0].longitude == double.parse(expectedUser['address']['geo']['lng']), true);
    });
  });
}