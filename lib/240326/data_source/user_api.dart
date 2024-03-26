import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:learn_dart_together/240325/model/user.dart';

//
class UserApi {
  Future<List<User>> getUsers() async {
    final http.Response response =
        await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'));
    List jsonList = jsonDecode(response.body);
    return jsonList.map((e) => User.fromJson(e)).toList();
  }

  Future<List<User>> getUserTopByUserName(String userName) async {
    final http.Response response = await http
        .get(Uri.parse('https://jsonplaceholder.typicode.com/users/$userName'));
    List jsonList = jsonDecode(response.body);
    List<User> nameBy10 = jsonList.map((e) => User.fromJson(e)).toList();
    return nameBy10;
  }

  Future<User> getUser(int id) async {
    final http.Response response = await http
        .get(Uri.parse('https://jsonplaceholder.typicode.com/users/$id'));
    final Map<String, dynamic> json = jsonDecode(response.body);
    return User.fromJson(json);
  }
}
