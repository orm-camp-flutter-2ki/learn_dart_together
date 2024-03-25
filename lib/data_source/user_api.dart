import 'dart:convert';

import 'package:learn_dart_together/http/http_service.dart';

import '../24_03_25/user.dart';
import 'package:http/http.dart' as http;

class UserApi {
  Future<List<User>> getUsers() async {
    final response =
        await HttpService().get('https://jsonplaceholder.typicode.com/users');

    List jsonList = jsonDecode(response.body);
    return jsonList.map((e) => User.fromJson(e)).toList();
  }
}
