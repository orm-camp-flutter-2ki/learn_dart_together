import 'dart:convert';

import 'package:collection/collection.dart';
import 'package:learn_dart_together/240326/model/user/user.dart';
import 'package:learn_dart_together/240326/repository/user_repository.dart';
import 'package:learn_dart_together/240326/service/http_service.dart';

class UserRepositoryImpl implements UserRepository {

  @override
  Future<List<User>> getUsers() async {
    final result = await HttpService().callGet('https://jsonplaceholder.typicode.com/users');
    final List jsonList = jsonDecode(result);

    return jsonList.map((e) => User.fromJson(e)).toList();
  }

  @override
  Future<List<User>> getUsersTop10ByUserName() async {
  final result = await HttpService().callGet('https://jsonplaceholder.typicode.com/users');
  final List jsonList = jsonDecode(result);
  final sortedList = jsonList.map((e) => User.fromJson(e))
      .toList().sorted((a, b) => a.username.compareTo(b.username));

  return sortedList.sublist(0, 10);
  }

}

void main() async {
  final a = await UserRepositoryImpl().getUsersTop10ByUserName();
}