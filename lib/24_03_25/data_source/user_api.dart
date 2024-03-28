import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:learn_dart_together/24_03_25/DTO/user.dart';
import 'package:learn_dart_together/24_03_28/dto/user_dto.dart';

class UserApi {
  Future<List<UserDto>> getUserDtoList() async {
    final http.Response response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'));
    final jsonList = jsonDecode(response.body) as List;
    final List<UserDto> userList = jsonList.map((e) => UserDto.fromJson(e)).toList();

    return userList;
  }
}