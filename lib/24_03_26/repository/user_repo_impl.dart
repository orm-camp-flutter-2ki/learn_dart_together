import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:learn_dart_together/24_03_26/model/user_related/user.dart';
import 'package:learn_dart_together/24_03_26/repository/user_repository.dart';

class UserRepositoryImpl implements UserRepository {
  final url = 'https://jsonplaceholder.typicode.com/users';

  @override
  Future<List<User>> getUsers() async {
    final http.Response response = await http.get(Uri.parse(url));

    List<dynamic> jsonList = jsonDecode(response.body);

    return jsonList.map((e) => User.fromJson(e)).toList();
  }

  @override
  Future<List<User>> getUsersTop10ByUserName() async {
    final http.Response response = await http.get(Uri.parse(url));

    List<dynamic> jsonList = jsonDecode(response.body);

    List<dynamic> topTen = jsonList.getRange(0, 10).toList();

    return topTen.map((e) => User.fromJson(e)).toList();
  }
}
