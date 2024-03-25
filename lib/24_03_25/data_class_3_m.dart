import 'data_class_3_u.dart';

import 'dart:convert';
import 'package:http/http.dart' as http;

class UserApi {
  // List<User> 형태
  Future<List<User>> getUsers() async {
    final http.Response response =
        await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'));

    if (response.statusCode == 200) {
      List<dynamic> jsonList =
          jsonDecode(response.body); // response.body = URL에서 가져온 데이터
      return jsonList.map((json) => User.fromJson(json)).toList();
    } else {
      throw Exception('실패!');
    }
  }
}

void main() async {
  UserApi userApi = UserApi();
  final users = await userApi.getUsers();
  for (final user in users) {
    print(user);
  }
}
