import 'dart:convert';
import 'package:collection/collection.dart';
import 'package:http/http.dart' as http;
import '../model/user_model/user.dart';

class UserApi {
  final String _url = 'https://jsonplaceholder.typicode.com/users';

  Future<List<User>> getUsers() async {
    final http.Response response = await http.get(Uri.parse(_url));

    if (response.statusCode == 200) {
      List jsonList = jsonDecode(response.body);
      return jsonList.map((e) => User.fromJson(e)).toList();
    } else {
      throw Exception('응답없음');
    }
  }

  Future<List<User>> getUsersTop10ByUserName() async {
    final http.Response response = await http.get(Uri.parse(_url));

    if (response.statusCode == 200) {
      List jsonList = jsonDecode(response.body);
      List top10UserNameList = jsonList
          .sorted((a, b) => a['userName'].compareTo(['userName']))
          .sublist(0, 10);

      // 안되네요...ㅠ
      return top10UserNameList.map((e) => User.fromJson(e)).toList();
    } else {
      throw Exception('응답없음');
    }
  }
}
