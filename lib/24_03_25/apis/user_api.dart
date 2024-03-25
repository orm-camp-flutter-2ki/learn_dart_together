import 'dart:convert';

import 'package:learn_dart_together/24_03_25/http_proxy_impl.dart';

import '../http_proxy.dart';
import '../models/user.dart';

class UserApi {
  static const baseUrl = 'https://jsonplaceholder.typicode.com';
  final HttpProxy http;

  UserApi({required this.http});

  Future<List<User>> getUsers() async {
    final response = await http.get(Uri.parse('$baseUrl/users'));
    return (jsonDecode(response.body) as List)
        .map((e) => User.fromJson(e as Map<String, dynamic>))
        .toList();
  }
}

void main() async {
  final UserApi userApi = UserApi(http: HttpProxyImpl());
  List<User> users = await userApi.getUsers();
  print(users);
}
