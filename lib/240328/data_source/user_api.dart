import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:learn_dart_together/240328/dto/user_dto.dart';

class UserApi {
  final http.Client _client;

  UserApi({http.Client? client}) : _client = client ?? http.Client();

  Future<List<UserDTO>> getUsers() async {
    final response = await _client.get(Uri.parse('https://jsonplaceholder.typicode.com/users')).onError((error, stackTrace) => throw Exception('Error:$error'));

    final List jsonList = response.statusCode == 200 ? jsonDecode((response.body)) : throw Exception('statusCode:${response.statusCode}');

    return jsonList.map((e) => UserDTO.fromJson(e)).toList();
  }
}
