import 'dart:convert';

import 'package:collection/collection.dart';
import 'package:http/http.dart' as http;
import 'package:http/testing.dart';
import 'package:learn_dart_together/orm_240328/02_data_source/user_api.dart';
import 'package:learn_dart_together/orm_240328/02_dto/user_dto.dart';
import 'package:learn_dart_together/orm_240328/02_mapper/user_mapper.dart';
import 'package:learn_dart_together/orm_240328/02_repository/user_repository_impl.dart';
import 'package:test/test.dart';

void main() {
  final mockMap = {
    "id": 1,
    "name": "Leanne Graham",
    "username": "Bret",
    "email": "Sincere@april.biz",
    "address": {
      "street": "Kulas Light",
      "suite": "Apt. 556",
      "city": "Gwenborough",
      "zipcode": "92998-3874",
      "geo": {"lat": "-37.3159", "lng": "81.1496"}
    }
  };

  test('user test', () async {
    final mockClient = MockClient((request) async {
      if (request.url.toString() ==
          'https://jsonplaceholder.typicode.com/users') {
        return http.Response(jsonEncode(mockMap), 200);
      }
      return http.Response('error', 400);
    });
    final repository = UserRepositoryImpl(UserApi(client: mockClient));

    final result = await repository.getUser();
    final expected = result
        .map((e) => UserDto.fromJson(e as Map<String, dynamic>).toUser())
        .toList();

    expect(result.equals(expected), true);
  });
}
