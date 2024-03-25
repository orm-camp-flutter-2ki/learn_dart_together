import 'dart:convert';

import 'package:learn_dart_together/240325/model/user/user.dart';
import 'package:learn_dart_together/240325/service/http_service.dart';

class UserApi {
  Future<User> getUser(int i) async {
    final result = await HttpService().callGet('https://jsonplaceholder.typicode.com/users/$i');
    final Map<String, dynamic> json = jsonDecode(result);
    return User.fromJson(json);
  }

  Future<List<User>> getUserList() async {
    final result = await HttpService().callGet('https://jsonplaceholder.typicode.com/users');
    final List jsonList = jsonDecode(result);
    return jsonList.map((e) => User.fromJson(e)).toList();
  }
}