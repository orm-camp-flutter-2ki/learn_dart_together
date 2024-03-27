import 'dart:convert';

import 'package:dart_cli_practice/240325/practice/user.dart';
import 'package:http/http.dart' as http;

class UserApi {
  Future<List<User>> getUsers() async {
    final http.Response response =
        await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'));

    List jsonList = jsonDecode(response.body);
    return jsonList.map((e) => User.fromJson(e)).toList();
  }
}
