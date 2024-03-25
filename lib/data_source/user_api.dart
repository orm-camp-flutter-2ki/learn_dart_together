import 'dart:convert';

import '../24_03_25/user.dart';
import 'package:http/http.dart' as http;

class UserApi {
  Future<List<User>> getUsers() async {
    final http.Response response =
        await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'));

    List jsonList = jsonDecode(response.body);
    return jsonList.map((e) => User.fromJson(e)).toList();
  }
}
