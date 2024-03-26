import 'dart:convert';

import 'package:learn_dart_together/%EC%A0%95%EB%8B%A4%ED%9D%AC/24_03_25/data_source/todo.dart';
import 'package:http/http.dart' as http;

class TodoApi {
  Future<Todo> getTodo(int id) async {
    try {
      final http.Response response = await http
          .get(Uri.parse("https://jsonplaceholder.typicode.com/todos/$id"));
      // ok
      if (response.statusCode == 200) {
        Map<String, dynamic> todoMap = jsonDecode(response.body);
        return Todo.fromJson(todoMap);
        // ok가 아닌 경우,
      } else {
        throw Exception('server error: ${response.statusCode}');
      }
    } catch (e) {
      throw Exception('Fail to get todo');
    }
  }

  Future<List<Todo>> getTodos() async {
    try {
      final http.Response response = await http
          .get(Uri.parse("https://jsonplaceholder.typicode.com/todos"));
      //ok

      if (response.statusCode == 200) {
        //아래 코드에서 as LIst 안하면 에러남/ 왜 ?????????
        //jsonDecode 함수의 반환타입은 dynamic 임.
        // 왜 ? 컴파일 단계에서 실제 타입을 알숭벗기 때문임.
        // 그래서 반환된 타입을 list 로 사용하려면 명시적으로 타입변환을 해줘야함......
        // 그래서 이코드만 쓰면 dart는 list 가 아닐수도잇는것에 왜 list씀? 하고 에러남
        // final todoList = jsonDecode(response.body)
        // as List 를 붙여주면 명시적으로 반환된 객체가 List 임을 알려줘서 안전하게  map 코드사용 가능.
        // 하지만 이 방식은 반환객체가 List임이 확실할떄 써야함.
        final todoList = jsonDecode(response.body) as List;
        return todoList.map((e) => Todo.fromJson(e)).toList();
      }
      //ok가 아닌경우
      else {
        throw Exception('server error: ${response.statusCode}');
      }
    } catch (e) {
      throw Exception('Fail to get todos');
    }
  }
}
