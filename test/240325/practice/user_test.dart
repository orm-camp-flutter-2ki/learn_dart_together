import 'dart:convert';

import 'package:dart_cli_practice/240325/data_source/user_api.dart';
import 'package:dart_cli_practice/240325/practice/user.dart';
import 'package:http/http.dart' as http;
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() async {
  JsonEncoder encoder = JsonEncoder.withIndent('  ');
  UserApi api = UserApi();

  final userJsonString = await http
      .get(Uri.parse('https://jsonplaceholder.typicode.com/users'))
      .then((response) => response.body);

  test('User api는 /users path로 user list를 fetch 한다.', () async {
    // 역직렬화하여 생성한 List<User>를 다시 직렬화하여 비교
    List<User> userList = await api.getUsers();
    final actualJson = encoder.convert(userList);

    expect(actualJson, equals(userJsonString));
  });
}
