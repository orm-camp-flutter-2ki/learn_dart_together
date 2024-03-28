import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:learn_dart_together/240328/model/user.dart';

class UserApi {
  final _url = 'https://jsonplaceholder.typicode.com';

  Future<List<User>> getUsers() async {
    final http.Response response = await http.get(Uri.parse('$_url/users'));
    if (response.statusCode == 200) {
      final List<dynamic> jsonList =
          jsonDecode(utf8.decode(response.bodyBytes));
      final List<User> userList =
          jsonList.map((json) => User.fromJson(json)).toList();
      return userList;
    } else {
      throw Exception('에러 확인');
    }
  }
}
