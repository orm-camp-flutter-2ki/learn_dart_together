import 'dart:convert';

import 'package:http/http.dart' as http;

import '../model/user.dart';

class UserApi {
  // 과제3. 복잡한 Json List 를 List<User> 로 변환
  Future<List<User>> jsonToList(String uri) async {
    final response = await http.get(Uri.parse(uri));

    try {
      if (response.statusCode == 200) {
        final jsonList = jsonDecode(response.body) as List;

        return jsonList.map((e) => User.fromJson(e)).toList();
      } else {
        throw Exception('과제 3 ERROR: HTTP Status Code ${response.statusCode}');
      }
    } catch (e) {
      return Future.error('과제 3 ERROR: $e');
    }
  }
}
