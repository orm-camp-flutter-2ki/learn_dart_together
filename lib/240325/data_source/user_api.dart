import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:untitled2/240325/user.dart';

class UserApi {

  Future<List<User>> getUsers() async {
    final http.Response response =
        await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'));

    List jsonList = jsonDecode(response.body);
    return jsonList.map((e) => User.fromJson(e)).toList();
  }

  Future<User> getUser(int id) async {
    final http.Response response = await http
        .get(Uri.parse('https://jsonplaceholder.typicode.com/users/$id'));

    final Map<String, dynamic> json = jsonDecode(response.body);
    return User.fromJson(json);
  }
}

void main() async {
  final userApi = await UserApi();
  final user = await userApi.getUsers();
  print(user);
}