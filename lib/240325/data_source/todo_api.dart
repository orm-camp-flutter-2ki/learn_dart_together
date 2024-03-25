import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:learn_dart_together/240325/model/todo.dart';

class TodoApi {

  // 과제1. 간단한 JSON 을 데이터 클래스로 변환
  Future<void> jsonToDataClass() async {
    String uri = 'https://jsonplaceholder.typicode.com/todos/1';

    // 방법 1번
    // http.get(
    //     Uri.parse('https://jsonplaceholder.typicode.com/todos/1'))
    //     .then((response) => jsonDecode(response.body))
    //     .then((json) => print(json));

    // 방법 2번
    var response = await http.get(Uri.parse(uri));
    var body = jsonDecode(response.body) as Map<String, dynamic>;
    print(body);
  }


  // 과제2. Json List 를 List<Todo> 로 변환
  Future<List<Todo>> listToListTodo() async {
    String uri = 'https://jsonplaceholder.typicode.com/todos';

    // json List 형태의 json 코드를 받는다.
    var response = await http.get(Uri.parse(uri));
    // json 코드를 List<dynamic> 으로 변환
    var jsonList = jsonDecode(response.body) as List;
    // jsonList 에 담긴 값들을 List<Todo> 에 담는다.
    return jsonList.map((e) => Todo.fromJson(e)).toList();
  }
}