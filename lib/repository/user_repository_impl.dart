import 'dart:convert';

import 'package:collection/collection.dart';
import 'package:learn_dart_together/24_03_25/user.dart';
import 'package:learn_dart_together/data_source/user_api.dart';
import 'package:learn_dart_together/repository/user_repository.dart';

class UserRepositoryImpl implements UserRepository {
  final UserApi _api = UserApi();

  @override
  Future<List<User>> getUsers() async {
    final response = await _api.getUsers();
    List jsonList = jsonDecode(response);
    return jsonList.map((e) => User.fromJson(e)).toList();
  }

  @override
  Future<List<User>> getUsersTop10ByUserName() async {
    final response = await _api.getUsers();
    List jsonList = jsonDecode(response);
    return jsonList.map((e) => User.fromJson(e)).sorted((a, b) => a.userName.compareTo(b.userName)).take(10).toList();
  }
}
