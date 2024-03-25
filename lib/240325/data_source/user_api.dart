import 'dart:convert';

import 'package:http/http.dart' as http;

import '../model/user.dart';

class UserApi {

  // 과제3. 복잡한 Json List 를 List<User> 로 변환
  Future<List<User>> jsonToList() async {
    String uri = 'https://jsonplaceholder.typicode.com/users';

    final response = await http.get(Uri.parse(uri));
    final jsonList = jsonDecode(response.body) as List;

    var aa = jsonList.map((e) => User.fromJson(e)).toList();
    for( int i = 0; i < jsonList.length; i++ ) {
      var bb = jsonList[i]['company'];
      print(bb);
    }
    return aa;
  }
}