import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:learn_dart_together/0325/user_data_class.dart';

class UserApi {
  Future<List<User>> getUsers() async {
    http.Response response;
    try {
      response = await http
          .get(Uri.parse('https://jsonplaceholder.typicode.com/users'));
    } catch (error) {
      print('[Error]\n$error');
      return []; // // 예외가 발생하면 빈 리스트를 반환하거나 다른 처리할 수 있다.
    }

    final List jsonList = jsonDecode(response.body);
    return jsonList.map((e) => User.fromJson(e)).toList();
  }

  Future<User> getUser(int id) async {
    http.Response response;
    try {
      response = await http
          .get(Uri.parse('https://jsonplaceholder.typicode.com/users/$id'));
    } catch (error) {
      print('[Error]\n$error');
      rethrow;
    }
    final Map<String, dynamic> json = jsonDecode(response.body);
    return User.fromJson(json);
  }
}
