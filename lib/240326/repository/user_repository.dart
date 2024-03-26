import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:learn_dart_together/240326/vo/user.dart';

class UserRepository {
  Future<List<User>> getUsers() async {
    final http.Response response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'));
// response.body == Json String
    List jsonList = jsonDecode(response.body);
    // List<dynamic> => List<User>
    return jsonList.map((e) => User.fromJson(e)).toList();
  }

  Future<List<User>> getUsersTop10ByUserName() async {
    final http.Response response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'));
    // response.body == Json String
    List jsonList = jsonDecode(response.body);
    List<User> userList = jsonList.map((e) => User.fromJson(e)).toList();
    userList.sort(
      (a, b) => a.userName.compareTo(b.userName),
    );
    return userList;
  }
}

main() async {
  List<User> users = await UserRepository().getUsers();
  List<User> top10 = await UserRepository().getUsersTop10ByUserName();
  for (var element in top10) {
    print(element.userName);
  }
}
