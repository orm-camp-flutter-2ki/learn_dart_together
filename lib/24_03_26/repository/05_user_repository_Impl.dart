import 'dart:convert';
import 'package:collection/collection.dart';
import 'package:http/http.dart' as http;
import 'package:learn_dart_together/24_03_25/01_user.dart';

import '05_user_repository.dart';

void main() async {
  final repository = UserRepositoryImpl();
  final userTop10 = await repository.getUsersTop10ByUserName();
  print(userTop10);
}

class UserRepositoryImpl implements UserRepository {
  @override
  Future<List<User>> getUsers() async {
    final http.Response response =
        await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'));

    List jsonList = jsonDecode(response.body);
    return jsonList.map((e) => User.fromJson(e)).toList();
  }

  @override
  Future<List<User>> getUsersTop10ByUserName() async {
    final List<User> userList = await getUsers();
    return userList
        .sorted((a, b) => a.name.compareTo(b.name))
        .take(10)
        .toList();
  }
}
