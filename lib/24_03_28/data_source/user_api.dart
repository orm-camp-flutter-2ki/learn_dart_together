import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:learn_dart_together/24_03_28/dto/user_dto.dart';

class UserApi {
  final http.Client _client;
  final String _url = 'https://jsonplaceholder.typicode.com';

  UserApi({http.Client? client}) : _client = client ?? http.Client();

  Future<List<UserDto>> getUsers() async {
    final response = await _client
        .get(Uri.parse('$_url/users'))
        .onError((error, stackTrace) => throw Exception('Error:$error'));

    final List jsonList = response.statusCode == 200
        ? jsonDecode((response.body))
        : throw Exception('statusCode:${response.statusCode}');

    return jsonList.map((e) => UserDto.fromJson(e)).toList();
  }
}
