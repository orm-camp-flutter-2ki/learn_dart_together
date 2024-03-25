// https://pub.dev/packages/http

import 'dart:convert';

import 'package:http/http.dart' as http;

// void main() {
//   http
//       .get(Uri.parse('https://jsonplaceholder.typicode.com/todos/1'))
//       .then((response) => jsonDecode(response.body))
//       .then((json) => print(json));
// }

void main() async {
  final response =
      await http.get(Uri.parse('https://jsonplaceholder.typicode.com/todos/1'));
  final json = jsonDecode(response.body);
  print(json);
}
