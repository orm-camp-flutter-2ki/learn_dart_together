import 'dart:convert';

import 'package:http/http.dart' as http;

import '../model/user.dart';

class UserApi {
  final urlBase = 'https://jsonplaceholder.typicode.com/users';

  Future<List<User>> getUsers() async {
    final http.Response response = await http.get(Uri.parse(urlBase));

    if (response.statusCode == 200) {
      List<dynamic> jsonList = jsonDecode(response.body);
      return jsonList.map((e) => User.fromJson(e)).toList();
    } else {
      throw Exception('실패');
    }
  }

  Future<List<User>> getUsersTop10ByUserName() async {
    final http.Response response =
        await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'));

    if (response.statusCode == 200) {
      final List<dynamic> jsonList = jsonDecode(response.body) as List;
      return jsonList.map((e) => User.fromJson(e)).toList();
    } else {
      throw Exception('실패');
    }
  }
}
