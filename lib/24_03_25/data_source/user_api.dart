import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:learn_dart_together/24_03_25/data_source/user.dart';

class UserApi {
  Future<List<User>> getUsers() async {
    final http.Response response =
        await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'));
    List jsonList = jsonDecode(response.body); //String

    return jsonList.map((e) => User.fromJson(e)).toList();
  }

  Future<User> getUser(int id) async {
// try catch 해야
    final http.Response response = await http
        .get(Uri.parse('https://jsonplaceholder.typicode.com/users/$id'));
// response.body == Json String
    final Map<String, dynamic> json = jsonDecode(response.body);
    return User.fromJson(json);
  }
}
