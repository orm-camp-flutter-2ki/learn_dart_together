import 'dart:convert';

import 'package:collection/collection.dart';
import 'package:learn_dart_together/24_03_28/user/mapper/user_mapper.dart';
import 'package:learn_dart_together/24_03_28/user/model/user.dart';
import 'package:learn_dart_together/http/http_core.dart';
import 'package:learn_dart_together/repository/user_repository.dart';

import '../24_03_28/user/dto/user_dto.dart';
import '../http/custom_http_client.dart';

class UserRepositoryImpl implements UserRepository {
  final CustomHttpClient _httpService;

  UserRepositoryImpl(this._httpService);

  @override
  Future<List<User>> getUsers() async {
    final response = await _httpService.get(usersUrl);
    List jsonList = jsonDecode(response);
    return jsonList.map((e) => UserDto.fromJson(e).toUser()).toList();
  }

  @override
  Future<List<User>> getUsersTop10ByUserName() async {
    List<User> users = [];
    try {
      users = await getUsers();
      users
          .sorted((a, b) => a.name.compareTo(b.name))
          .take(10)
          .toList();
    } catch (e) {
      throw Exception(e);
    }
    return users;
  }
}
