import 'dart:convert';
import 'package:http/http.dart' as http;
import '../user.dart';

class UserApi {
  Future<List<User>> getUsers() async {
    final http.Response response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'));
    List<User> userList = [];

    if (response.statusCode == 200) {
      List jsonList = jsonDecode(response.body);
      userList = jsonList.map((e) => User.fromJson(e)).toList();
    } else {
      print('Request failed with status: ${response.statusCode}.');
    }

    return userList;
  }
}