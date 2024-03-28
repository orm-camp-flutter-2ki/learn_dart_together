import 'dart:convert';

import 'package:learn_dart_together/24_03_25/http_proxy.dart';
import 'package:learn_dart_together/24_03_28/dto/user_dto.dart';
import 'package:learn_dart_together/24_03_28/mapper/user_mapper.dart';
import 'package:learn_dart_together/24_03_28/model/user.dart';

class UserApi {
  // 상수라서 정적으로 메모리에 한번만 올리고 싶어 static으로 선언하였습니다.
  static const _baseUrl = 'https://jsonplaceholder.typicode.com';
  final HttpProxy _http;

  UserApi({required http}) : _http = http;

  Future<List<User>> getUsers() async {
    final response = await _http.get(Uri.parse('$_baseUrl/users'));
    return (jsonDecode(response.body) as List)
        .map((e) => UserDto.fromJson(e as Map<String, dynamic>).toUser())
        .toList();
  }
}
