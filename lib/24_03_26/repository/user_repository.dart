import 'package:collection/collection.dart';
import 'package:learn_dart_together/24_03_26/model/dt_user.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

abstract interface class UserRepository {
  Future<List<User>> getUser();
  Future<List<User>> getUserTop10ByUserName();
}

class UserRepositoryImpl implements UserRepository {
  final baseUri = 'https://jsonplaceholder.typicode.com/users';

  @override
  Future<List<User>> getUser() async {
    final http.Response response = await http.get(Uri.parse(baseUri));

    List jsonList =
    (response.statusCode == 200) ? jsonDecode(response.body) : [];
    return jsonList.map((e) => User.fromJson(e)).toList();
  }

  @override
  Future<List<User>> getUserTop10ByUserName() async {
    final http.Response response = await http.get(Uri.parse(baseUri));

    List jsonList =
    (response.statusCode == 200) ? jsonDecode(response.body) : [];
    return jsonList.sortedBy((element) => element['username'] as String).map((e) => User.fromJson(e)).toList();
  }
}