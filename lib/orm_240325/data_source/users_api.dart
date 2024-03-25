import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:learn_dart_together/orm_240325/users.dart';

class UserApi {
  Future<List<Users>> getUsers() async {
    final http.Response response =
        await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'));

    List jsonList = jsonDecode(response.body);
    return jsonList.map((e) => Users.fromJson(e)).toList();
  }

  Future<Users> getUser(int id) async {
    final http.Response response = await http
        .get(Uri.parse('https://jsonplaceholder.typicode.com/users/$id'));

    final Map<String, dynamic> json = jsonDecode(response.body);
    return Users.fromJson(json);
  }
}
