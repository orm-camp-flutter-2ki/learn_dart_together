import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:learn_dart_together/240325/data_source/user.dart';

// DataSource
class UserApi {
  Future<List<User>> getUsers() async {
    final http.Response response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'));
// response.body == Json String
    List jsonList = jsonDecode(response.body);
    // List<dynamic> => List<User>
    return jsonList.map((e) => User.fromJson(e)).toList();
  }
}
