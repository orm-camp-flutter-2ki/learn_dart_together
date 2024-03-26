import 'package:collection/collection.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:learn_dart_together/0325/model/user_model.dart';

class UserApi {
  Future<List<User>> getUsersApi() async {
    http.Response response;
    try {
      response = await http
          .get(Uri.parse('https://jsonplaceholder.typicode.com/users'));
    } catch (error) {
      print('[Error]\n$error');
      return []; // 예외가 발생하면 빈 리스트를 반환하거나 다른 처리할 수 있다.
    }

    final List json = await jsonDecode(response.body);
    return json.map((e) => User.fromJson(e)).toList();
  }

  Future<List<User>> getUserApi(int id) async {
    http.Response response;
    try {
      response = await http
          .get(Uri.parse('https://jsonplaceholder.typicode.com/users/$id'));
    } catch (error) {
      print('[Error]\n$error');
      return [];
    }

    // final List json = await jsonDecode(response.body);
    // return json.map((e) => User.fromJson(e)).toList();
    final Map<String, dynamic> json = jsonDecode(response.body);
    return [User.fromJson(json)];
  }

  Future<List<User>> getUserTop10ByUserNameApi() async {
    http.Response response;
    try {
      response = await http
          .get(Uri.parse('https://jsonplaceholder.typicode.com/users'));
    } catch (error) {
      print('[Error]\n$error');
      return [];
    }

    final List json = await jsonDecode(response.body);
    return json
        .map((e) => User.fromJson(e))
        .sorted((a, b) => a.name.compareTo(b.name))
        .take(10)
        .toList();
  }
}