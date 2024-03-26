import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:collection/collection.dart';
import 'package:learn_dart_together/0325/user.dart';
import 'package:learn_dart_together/0326/data_source/user_repository.dart';

class UserRepositoryImpl implements UserRepository {

  @override
  Future<List<User>> getUsers() async {
    final http.Response response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'));
    List<User> userList = [];

    if (response.statusCode == 200) {
      List jsonList = jsonDecode(response.body);
      userList = jsonList.map((e) => User.fromJson(e)).toList();
    } else {
      print('Request failed with status: ${response.statusCode}.');
    }

    return userList;
  }

  @override
  Future<List<User>> getUsersTop10ByUserName() async {
    final http.Response response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'));
    List<User> userList = [];

    if (response.statusCode == 200) {
      List jsonList = jsonDecode(response.body);
      userList = jsonList.sorted((a, b) => a['username'].compareTo(b['username'])).take(10).map((e) => User.fromJson(e)).toList();

    } else {
      print('Request failed with status: ${response.statusCode}.');
    }

    return userList;
  }
}