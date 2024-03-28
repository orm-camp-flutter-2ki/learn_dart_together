import 'dart:convert';

import 'package:http/http.dart' as http;

import '../01_user.dart';



void main() async {
  List<User> userList = await UserApi().getUsers();
  print(userList);
}

class UserApi {
  Future<List<User>> getUsers() async {
    final http.Response response =
    await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'));

    // response.body == Json String
    List jsonList = jsonDecode(response.body);
    print(jsonList);
    return jsonList.map((e) => User.fromJson(e)).toList();
  }

  Future<User> getUser(int id) async {
    final http.Response response = await http
        .get(Uri.parse('https://jsonplaceholder.typicode.com/users$id'));
    // response.body == Json String

    final Map<String, dynamic> json = jsonDecode(response.body);
    print(json);
    return User.fromJson(json);
  }

}
