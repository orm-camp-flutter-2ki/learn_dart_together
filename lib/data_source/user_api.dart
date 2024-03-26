import 'dart:convert';
import 'package:http/http.dart' as http;
import '../24_03_25/02_user.dart';

class UserApi {
  Future<List<User>> getUsers() async {
    final http.Response response =
        await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'));

    if (response.statusCode == 200) {
      List jsonList = jsonDecode(response.body);
      return jsonList.map((e) => User.fromJson(e)).toList();
    } else {
      throw Exception('응답없음');
    }
  }
}
