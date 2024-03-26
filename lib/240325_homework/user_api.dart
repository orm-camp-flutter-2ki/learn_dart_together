import 'dart:convert';

import 'package:http/http.dart' as http;

import './model/user.dart';

void main() async {
  UserApi user = UserApi();
  await user.getUsers();
  await user.getUser(1);
}

class UserApi {
  Future<List<User>> getUsers() async {
    final response =
        await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'));

    if (response.statusCode == 200) {
      List<dynamic> json = jsonDecode(response.body);
      List<User> data = json.map((e) => User.fromJson(e)).toList();
      return data;
    } else {
      throw Exception('Response 에러');
    }
  }

  Future<User> getUser(id) async {
    final response = await http
        .get(Uri.parse('https://jsonplaceholder.typicode.com/users/$id'));

    if (response.statusCode == 200) {
      Map<String, dynamic> json = jsonDecode(response.body);
      User data = User.fromJson(json);
      return data;
    } else {
      throw Exception('Response 에러');
    }
  }
}
