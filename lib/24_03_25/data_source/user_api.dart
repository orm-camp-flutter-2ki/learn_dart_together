import 'dart:convert';

import 'package:http/http.dart' as http;


import '../../24_03_28/dto/user_dto.dart';
import '../01_user.dart';



void main() async {
  // List<GeoDto> userList = await UserApi().getUsers();
  // print(userList);
  UserApi().getUsers();

}

class UserApi {
  Future<List<GeoDto>> getUsers() async {
    final http.Response response =
    await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'));

    // response.body == Json String
    List jsonList = jsonDecode(response.body);
    return jsonList.map((e) => GeoDto.fromJson(e)).toList();
  }

  Future<GeoDto> getUser(int id) async {
    final http.Response response = await http
        .get(Uri.parse('https://jsonplaceholder.typicode.com/users$id'));
    // response.body == Json String

    final Map<String, dynamic> json = jsonDecode(response.body);
    print(json);
    return GeoDto.fromJson(json);
  }

}
