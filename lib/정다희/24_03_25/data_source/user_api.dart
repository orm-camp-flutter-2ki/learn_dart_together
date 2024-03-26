import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:learn_dart_together/%EC%A0%95%EB%8B%A4%ED%9D%AC/24_03_25/data_source/user.dart';

class UserApi {
  Future<List<User>> getUsers() async {
    try {
      final http.Response res = await http
          .get(Uri.parse("https://jsonplaceholder.typicode.com/users"));
      if (res.statusCode == 200) {
        final List<dynamic> resList = jsonDecode(res.body);
        print(resList);
        return resList.map((e) => User.fromJson(e)).toList();
      } else {
        throw Exception('error : ${res.statusCode}');
      }
    } catch (e) {
      print('thisiserror: $e');
      throw Exception('api error');
    }
  }
}
