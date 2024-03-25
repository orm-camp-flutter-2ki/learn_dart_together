import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:learn_dart_together/240325/model/todo.dart';

class TodoApi {
  // 과제1. 간단한 JSON 을 데이터 클래스로 변환
  Future<Todo> jsonToDataClass(String uri) async {
    // http.get(
    //     Uri.parse('https://jsonplaceholder.typicode.com/todos/1'))
    //     .then((response) => jsonDecode(response.body))
    //     .then((json) => print(json));

    // 방법 2번
    var response = await http.get(Uri.parse(uri));

    try {
      if (response.statusCode == 200) {
        var jsonData = jsonDecode(response.body) as Map<String, dynamic>;

        return Todo.fromJson(jsonData);
      } else {
        throw Exception('과제 1 ERROR: HTTP Status Code ${response.statusCode}');
      }
    } catch (e) {
      return Future.error('과제 1 ERROR: $e');
    }
  }

  // 과제2. Json List 를 List<Todo> 로 변환
  Future<List<Todo>> listToListTodo(String uri) async {
    // json List 형태의 json 코드를 받는다.
    var response = await http.get(Uri.parse(uri));

    try {
      if (response.statusCode == 200) {
        // json 코드를 List<dynamic> 으로 변환
        var jsonList = jsonDecode(response.body) as List;

        // jsonList 에 담긴 값들을 List<Todo> 에 담는다.
        return jsonList.map((e) => Todo.fromJson(e)).toList();
      } else {
        throw Exception('과제 2 ERROR: HTTP Status Code ${response.statusCode}');
      }
    } catch (e) {
      return Future.error('과제 2 ERROR: $e');
    }
  }
}
