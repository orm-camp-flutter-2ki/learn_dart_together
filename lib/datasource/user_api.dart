import 'dart:convert';
import 'package:http/http.dart' as http;
import 'dt_user.dart';

class UserApi {
  Future<List<User>> getUsers() async {
    final http.Response response =
    await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'));

    List jsonList = jsonDecode(response.body);
    return jsonList.map((e) => User.fromJson(e)).toList();
  }
}