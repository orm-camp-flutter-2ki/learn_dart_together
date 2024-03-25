import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:learn_dart_together/0325/user_api.dart';

class TodoApi {
// http를 사용하여 string 형태의 json을 list로...
  Future<List<User>> getTodos() async {
    final response = await http
        .get(Uri.parse('https://jsonplaceholder.typicode.com/todos/1'));
    // final json = jsonDecode(response.body).toString();

    List jsonList = jsonDecode(response.body);
    return jsonList.map((e) => User.fromJson(e)).toList();
  }

  Future<User> getTodo(int id) async {
    final http.Response response = await http
        .get(Uri.parse('https://jsonplaceholder.typicode.com/todos/$id'));

    // response.body == Json String
    final Map<String, dynamic> json = jsonDecode(response.body);
    return User.fromJson(json);
  }
}
