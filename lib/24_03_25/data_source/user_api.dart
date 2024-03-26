import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:learn_dart_together/24_03_25/DTO/user.dart';

class UserApi {
  Future<List<User>> getUsers() async {
    final http.Response response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'));
    final jsonList = jsonDecode(response.body) as List;
    final List<User> userList = jsonList.map((e) => User.fromJson(e)).toList();

    return userList;
  }
}