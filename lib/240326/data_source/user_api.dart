import 'dart:convert';

import 'package:http/http.dart' as http;

import '../model/user.dart';

class UserApi {
  Future<List<User>> getUsers() async {
    final response =
        await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'));

    if (response.statusCode == 200) {
      List json = jsonDecode(response.body);

      List<User> data = json.map((json) => User.fromJson(json)).toList();
      return data;
    } else {
      throw Exception('Response 에러');
    }
  }
}
