import 'dart:convert';

import 'package:learn_dart_together/24_03_25/http_proxy.dart';
import 'package:learn_dart_together/24_03_28/data_source/interface/user_api.dart';
import 'package:learn_dart_together/24_03_28/dto/user_dto.dart';

class UserApiImpl implements UserApi {
  // 상수라서 정적으로 메모리에 한번만 올리고 싶어 static으로 선언하였습니다.
  static const _baseUrl = 'https://jsonplaceholder.typicode.com';
  final HttpProxy _http;

  UserApiImpl({required http}) : _http = http;

  @override
  Future<List<UserDto>> getUsers() async {
    final response = await _http.get(Uri.parse('$_baseUrl/users'));
    return (jsonDecode(response.body) as List)
        .map((e) => UserDto.fromJson(e as Map<String, dynamic>))
        .toList();
  }
}
