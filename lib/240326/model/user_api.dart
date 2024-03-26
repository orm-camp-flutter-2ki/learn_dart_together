import 'dart:convert';

import '../data_source/user.dart';
import 'package:http/http.dart' as http;

class userApi {
  Future<List<User>> getUsers() async {
    final response =
        await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'));
    final userlist = jsonDecode(response.body) as List;
    return userlist.map((e) => User.fromJson(e)).toList();
  }
}
