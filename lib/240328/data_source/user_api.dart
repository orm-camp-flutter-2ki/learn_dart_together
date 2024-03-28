import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:learn_dart_together/240328/model/user.dart';

class UserApi {
  final _url = 'https://jsonplaceholder.typicode.com';

  Future<User> getUsers() async {
    final http.Response response = await http.get(Uri.parse('$_url/users'));
    final Map<String, dynamic> json = (response.statusCode == 200)
        ? jsonDecode(utf8.decode(response.bodyBytes))
        : throw Exception('에러 확인');
    return User.fromJson(json);
  }
}
