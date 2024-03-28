import 'dart:convert';

import 'package:http/http.dart' as http;

import '../240325/practice3.dart';

class UserApi {
  Future<List<User>> getUsers() async {
    final http.Response response =
        await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'));

    // response.body == Json String
    List jsonList = jsonDecode(response.body);
    return jsonList.map((e) => User.fromJson(e)).toList();
  }

// Future<User> getTodo(int id) async {
//   final http.Response response = await http.get(
//       Uri.parse('https://jsonplaceholder.typicode.com/users/1/$id'));
//
//   // response.body == Json String
//   final Map<String, dynamic> json = jsonDecode(response.body);
//   return User.fromJson(json);
// }
}
