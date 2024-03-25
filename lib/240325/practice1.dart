import 'dart:convert';
import 'package:http/http.dart' as http;

import '../data_source/todo_api.dart';
import 'practice2.dart';

void main()async {
  Todo todoData = await TodoApi().getTodo(1);
  print(todoData);

  // http
  //     .get(Uri.parse('https://jsonplaceholder.typicode.com/todos/1'))
  //     .then((response) => jsonDecode(response.body))
  //     .then((json) => print(json));
}
