import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:learn_dart_together/24_03_25/01_user.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  test('과제3. 복잡한 Json List 를 List 로 변환  ', () async {
    Future<List<User>> getUsers() async {
      final http.Response response = await http
          .get(Uri.parse('https://jsonplaceholder.typicode.com/users'));

      // response.body == Json String
      List jsonList = jsonDecode(response.body);
      print(jsonList);
      return jsonList.map((e) => User.fromJson(e)).toList();
    }

    //given
    List<User> userList = await getUsers();

    //when
    final userType = userList.runtimeType;

    //then
    expect(userType == List<User>, true);
  });
}
