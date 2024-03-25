import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:learn_dart_together/240325/user.dart';

class UserApi {
  static Future<List<User>> getUsers() async {
    final http.Response response =
        await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'));
    final jsonList = jsonDecode(response.body) as List;

    return jsonList.map((e) => User.fromJson(e)).toList();
  }
}
