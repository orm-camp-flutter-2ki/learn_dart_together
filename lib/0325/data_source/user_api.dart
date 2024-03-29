import 'package:collection/collection.dart';
import 'package:http/http.dart' as http;
import 'package:learn_dart_together/0325/dto/user_dto.dart';
import 'package:learn_dart_together/0325/mapper/user_mapper.dart';
import 'dart:convert';

import 'package:learn_dart_together/0325/model/user.dart';

class UserApi {
  Future<List<User>> getUsersApi() async {
    final http.Response response =
        await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'));

    var check = (jsonDecode(utf8.decode(response.bodyBytes)));
    // var check = UserDto.fromJson(jsonDecode(utf8.decode(response.bodyBytes)));
    print(check);

    // print('=============================================\n');

    List json = response.statusCode == 200
        ? jsonDecode(utf8.decode(response.bodyBytes))
        : throw Exception(
            '[Error]\n${response.statusCode} ${response.reasonPhrase}');
    return json.map((e) => UserDto.fromJson(e)).map((e) => e.toUser()).toList();

    // final json = (response.statusCode == 200)
    //     ? UserDto.fromJson(jsonDecode(utf8.decode(response.bodyBytes)))
    //     : throw Exception(
    //         '[Error]\n${response.statusCode} ${response.reasonPhrase}');
    //
    //
    // return json.toUser();
  }

  Future<User> getUserApi(int id) async {
    final http.Response response = await http
        .get(Uri.parse('https://jsonplaceholder.typicode.com/users/$id'));

    final json = (response.statusCode == 200)
        ? UserDto.fromJson(jsonDecode(utf8.decode(response.bodyBytes)))
        : throw Exception(
            '[Error]\n${response.statusCode} ${response.reasonPhrase}');

    return json.toUser();
  }
}

/// 변경하고 싶은데... 여기 질문하기 ㅠ-ㅠ 아나~~~~~~~~~~
// Future<List<User>> getUserTop10ByUserNameApi() async {
//   final http.Response response =
//       await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'));
//
//   if(response.statusCode == 200){
//     final List<dynamic> json = await jsonDecode(utf8.decode(response.bodyBytes));
//     final user = json.map((e) => UserDto.fromJson(e)).toList();
//
//     return user.toUser;
//
//   }

/// 기존 코드
// final json = (response.statusCode == 200)
//     ? UserDto.fromJson(jsonDecode(utf8.decode(response.bodyBytes)))
//     : throw Exception(
//         '[Error]\n${response.statusCode} ${response.reasonPhrase}');
//
// final json = await jsonDecode(response.body);
// return json
//     .map((e) => User.fromJson(e))
//     .sorted((a, b) => a.name.compareTo(b.name))
//     .take(10)
//     .toList();
