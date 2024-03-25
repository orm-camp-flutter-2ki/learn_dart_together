import 'dart:convert';

import 'package:http/http.dart' as http;

import '240321/todo.dart';

void main() async {
  // 1번 방법
  // http.get(
  //     Uri.parse('https://jsonplaceholder.typicode.com/todos/1'))
  //     .then((response) => jsonDecode(response.body))
  //     .then((json) => print(json));

  // 2번 방법
  var response =
      await http.get(Uri.parse('https://jsonplaceholder.typicode.com/todos/1'));
  var body = jsonDecode(response.body) as Map<String, dynamic>;
  print(body);

  // var result = Todo.fromJson(body);
  // final user = Todo(
  //   id: result.id,
  //   userId: result.userId,
  //   title: result.title,
  //   completed: result.completed,
  // );
  // print(user.toJson());
}


