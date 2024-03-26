import 'dart:convert';

import 'package:collection/collection.dart';
import 'package:http/http.dart' as http;

import '../../24_03_25/data_source/user.dart';

class UserRepository {
  Future<List<User>> getUsers() async {
    final http.Response response =
        await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'));
    List jsonList = jsonDecode(response.body); //String

    return jsonList.map((e) => User.fromJson(e)).toList();
  }

  Future<List<User>> getUsersTop10ByUserName() async {
    final http.Response response =
        await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'));
    List jsonList = jsonDecode(response.body); //String

    return jsonList
        .where((e) => e['id'] <= 10)
        .sorted((a, b) => a['name'].compareTo(b['name']))
        .map((e) => User.fromJson(e))
        .toList();
  }
}

void main() async {
  UserRepository test = UserRepository();
  print(await test.getUsers());
  print('-------------------------------------------');
  print(await test.getUsersTop10ByUserName());
}
