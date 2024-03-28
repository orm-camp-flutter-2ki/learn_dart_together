import 'dart:convert';

import 'package:http/http.dart' as http;

import '../dto/user_dto.dart';

class UserApi {
  final http.Client _client;

  UserApi({http.Client? client}) : _client = client ?? http.Client();

  Future<List<UserDto>> getUser() async {
    final response = await _client
        .get(Uri.parse('https://jsonplaceholder.typicode.com/users'));
    if (response.statusCode == 200) {
      final json = jsonDecode(utf8.decode(response.bodyBytes));
      final jsonList = json as List;
      return jsonList.map((e) => UserDto.fromJson(e)).toList();
    } else {
      throw Exception('에러');
    }
  }
}
