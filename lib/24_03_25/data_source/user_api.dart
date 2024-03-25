import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:learn_dart_together/24_03_25/users/user.dart';

class UserApi {
  final url = 'https://jsonplaceholder.typicode.com/users';

  Future<List<User>> getUsers() async {
    final http.Response response = await http.get(Uri.parse(url));

    // response.body == json String

    List<dynamic> jsonList = jsonDecode(response.body);

    return jsonList.map((e) => User.fromJson(e)).toList();
  }

  Future<User> getUser(int id) async {
    try {
      // 없는 id가 들어올 수도 있지
      final http.Response response = await http.get(Uri.parse('$url/$id'));

      // response.body == json String
      final Map<String, dynamic> json = jsonDecode(response.body);

      return User.fromJson(json);
    } catch (err) {
      print('데이터를 가져오는 데 실패했습니다.\nerror : $err');

      return Future.error(err);
    }
  }
}
