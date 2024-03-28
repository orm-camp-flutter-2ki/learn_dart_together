import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:learn_dart_together/240328_homework/dto/user_dto.dart';

void main() async {
  UserApi user = UserApi();
  await user.getUsers();
}

class UserApi {
  Future<List<UserDto>> getUsers() async {
    final response =
        await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'));

    final json = (response.statusCode == 200)
        ? jsonDecode(response.body)
        : throw Exception('Response 에러');
    List<UserDto> data = json.map((e) => UserDto.fromJson(e)).toList();
    return data;
  }
}
