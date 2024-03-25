import 'dart:convert';

import 'package:http/http.dart' as http;

void main() {
  http
      .get(Uri.parse('https://jsonplaceholder.typicode.com/todos/1'))
      .then((response) => jsonDecode(response.body))
      .then((json) => print(json));
}
