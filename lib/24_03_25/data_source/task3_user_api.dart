import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:learn_dart_together/24_03_25/data_class/task3_user.dart';

class UserApi {
  Future<List<User>> getUsers() async {
    final http.Response response =
    await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'));

    List jsonList = jsonDecode(response.body);
    return jsonList.map((e) => User.fromJson(e)).toList();
  }
}

void main() async{ // 여기서 심플하게 테스트할때 async를 안붙이는 실수를 여러번 할까..
  UserApi test = UserApi();
  final result = await test.getUsers();
  print(result);
}