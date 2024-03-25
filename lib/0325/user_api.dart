import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:learn_dart_together/0325/user_data_class.dart';

class UserApi {
  Future<List<User>> getUsers() async {
    final response =
        await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'));

    final List jsonList = jsonDecode(response.body);
    return jsonList.map((e) => User.fromJson(e)).toList();
  }

  Future<User> getUser(int id) async {
    final http.Response response = await http
        .get(Uri.parse('https://jsonplaceholder.typicode.com/users/$id'));

    final Map<String, dynamic> json = jsonDecode(response.body);
    return User.fromJson(json);
  }
}