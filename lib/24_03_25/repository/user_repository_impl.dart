import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:learn_dart_together/24_03_25/model/user/user_model.dart';
import 'package:learn_dart_together/24_03_25/repository/interface/user_repository.dart';

class UserRepositoryImpl implements UserRepository{
  @override
  Future<List<UserModel>> getUsers() async {
    final jsonList = await _fetchUsers();
    return jsonList.map((e) => UserModel.fromJson(e)).toList();
  }

  @override
  Future<List<UserModel>> getUsersTop10ByUserName() async {
    final jsonList = await _fetchUsers();
    return jsonList.map((e) => UserModel.fromJson(e)).toList()..sort((a,b) => a.username.compareTo(b.username))..toSet()..toList()..take(10).toList();
  }

  Future<List> _fetchUsers() async {
    final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'));

    if (response.statusCode == 200) {
      return json.decode(response.body) as List;
    } else {
      throw Exception('통신 오류');
    }
  }
}

void main() async {
  final users = await UserRepositoryImpl().getUsersTop10ByUserName();
  for (final i in users) {
    print(i.username);
  }
}
