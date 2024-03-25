import 'dart:convert';

import 'package:http/http.dart' as http;

void main() async {
  // http.get(Uri.parse('https://jsonplaceholder.typicode.com/todos/1'))
  //     .then((response) => jsonDecode(response.body))
  //     .then((json) => print(json));

  final http.Response response =
      await http.get(Uri.parse('https://jsonplaceholder.typicode.com/todos/1'));

  final json = jsonDecode(response.body);
  print(json);

  print(response.statusCode); // 200 성공
}
