import 'dart:convert';

import 'package:http/http.dart' as http;

void main() async {
  final http.Response response =
      await http.get(Uri.parse('https://jsonplaceholder.typicode.com/todos/1'));
  final json = jsonDecode(response.body);
  print(json);
}
