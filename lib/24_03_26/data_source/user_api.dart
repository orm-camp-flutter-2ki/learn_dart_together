import 'dart:convert';
import 'package:http/http.dart' as http;

import '../model/user.dart';

class UserApi {
  final String baseUrl = 'https://jsonplaceholder.typicode.com/users';

  Future<List<User>> getUsers() async {
    final response = await http.get(Uri.parse(baseUrl));

    if (response.statusCode == 200) {
      List<dynamic> usersJson = json.decode(response.body);
      return usersJson.map((json) => User.fromJson(json)).toList();
    } else {
      throw Exception('Failed to load users.');
    }
  }

  Future<List<User>> getUsersTop10ByUserName() async {
    final response = await http.get(Uri.parse(baseUrl));

    if (response.statusCode == 200) {
      List<dynamic> usersJson = json.decode(response.body);
      List<User> users = usersJson.map((json) => User.fromJson(json)).toList();
      return users.sublist(0, 10);
    } else {
      throw Exception('실패!');
    }
  }
}

void main() async {
  final userApi = UserApi();
  final users = await userApi.getUsersTop10ByUserName();
  print(users);
}
