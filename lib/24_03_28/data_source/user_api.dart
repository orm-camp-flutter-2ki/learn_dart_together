import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:learn_dart_together/24_03_28/dto/user_dto.dart';

class UserApi {
  final _url = 'https://jsonplaceholder.typicode.com/users';

  Future<List<UserDto>> getUsers() async {
    final http.Response response = await http.get(Uri.parse(_url));

    List<dynamic> jsonList = jsonDecode(response.body);

    return jsonList.map((e) => UserDto.fromJson(e)).toList();
  }
}
