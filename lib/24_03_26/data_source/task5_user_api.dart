import 'dart:convert';
import 'package:collection/collection.dart';
import 'package:http/http.dart' as http;
import 'package:learn_dart_together/24_03_26/model_class/task5_user.dart';

class UserApi {
  Future<List<User>> getUsers() async {
    final http.Response res =
        await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'));

    List jsonList = jsonDecode(res.body) as List;
    return jsonList.map((e) => User.fromJson(e)).toList();
  }

  Future<List<User>> getUsersTop10ByUserName() async {
    UserApi userApi = UserApi(); // 위 메서드 재탕 준비..

    final List<User> users = await userApi.getUsers(); // 메서드 반찬 재활

    List<User> usersTop10ByUserName =
        users.sorted((a, b) => a.username.compareTo(b.username)).sublist(0, 10);
    return usersTop10ByUserName;
  }
}

Future<void> main() async {
  UserApi someUser = UserApi();
  final result = await someUser.getUsers();
  final result2 = await someUser.getUsersTop10ByUserName();

  for (final oneUser in result) {
    print('전체 유저를 출력합니다. $oneUser');
  }

  for (final oneUser in result2) {
    print('username(이름)을 정렬 후 top10 출력 $oneUser\n');
  }
}
