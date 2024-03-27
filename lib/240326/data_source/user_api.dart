import 'dart:convert'; //Decode 하기 위함

import 'package:http/http.dart' as http;
import 'package:learn_dart_together/240326/model/user.dart';

class UserApi {
  //감싸야 된다 그래야지 비싸지 않음
  Future<List<User>> getUsers() async {
    //비동기 함수
    final response = //http 응답 요청 성공했는지의 여부 판단
        await http.get(Uri.parse(
            'https://jsonplaceholder.typicode.com/users')); //URL에서 데이터를 가지고 옴 await 키워드를 사용하여 요청 기다림

    if (response.statusCode == 200) {
      final List<dynamic> jsonData = json
          .decode(response.body); //HTTP 응답 본문을 JSON 형식으로 디코딩하여 jsonData 변수에 저장
      return jsonData
          .map((json) => User.fromJson(json)) //여기까지가 이터러블형
          .toList(); // 리스트 하나하나가 유저 객체로 들어감
    } else {
      throw Exception('Error');
    }
  }

  Future<List<User>> getUsersTop10ByUserName() async {
    //비동기 함수
    final response = //http 응답 요청 성공했는지의 여부 판단
        await http.get(Uri.parse(
            'https://jsonplaceholder.typicode.com/users')); //URL에서 데이터를 가지고 옴 await 키워드를 사용하여 요청 기다림

    if (response.statusCode == 200) {
      final List<dynamic> jsonData = json
          .decode(response.body); //HTTP 응답 본문을 JSON 형식으로 디코딩하여 jsonData 변수에 저장
      return jsonData
          .map((json) => User.fromJson(json)) //여기까지가 이터러블형
          .toList(); // 리스트 하나하나가 유저 객체로 들어감
    } else {
      throw Exception('Error');
    }
  }
}

// void main() async {
//   UserRepository userRepo = UserRepositoryImpl();
//   final result = await userRepo.getUsersTop10ByUserName();
//   print(result);
// }
