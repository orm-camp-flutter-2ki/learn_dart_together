import 'dart:convert';

import 'package:http/http.dart' as http;

import '../dto/user_dto.dart';

class UserDataSource {
  final _baseUrl = 'https://jsonplaceholder.typicode.com';

  Future<List<UserDto>> getUsers() async {
    final http.Response response = await http.get(Uri.parse('$_baseUrl/users'));
    final String jsonListString = response.body;
    final List jsonList = jsonDecode(jsonListString);
    return jsonList.map((e) => UserDto.fromJson(e)).toList();
  }
}
