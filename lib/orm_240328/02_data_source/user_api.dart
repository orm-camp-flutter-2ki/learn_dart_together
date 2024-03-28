import 'dart:convert';

import 'package:http/http.dart' as http;

import '../02_dto/user_dto.dart';

class UserApi {
  final http.Client _client;
  final urlBase = 'https://jsonplaceholder.typicode.com/users';

  UserApi({http.Client? client}) : _client = client ?? http.Client();

  Future<List<UserDto>> getUser() async {
    final response = await _client.get(Uri.parse('$urlBase'));

    final jsonList = response.statusCode != 200
        ? throw Exception("오류남")
        : jsonDecode(response.body) as List;

    jsonList.map((e) => UserDto.fromJson(e)).toList();
    return jsonList.map((e) => UserDto.fromJson(e)).toList();
  }
}
