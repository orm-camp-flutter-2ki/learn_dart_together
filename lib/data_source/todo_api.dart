import 'dart:convert';
import 'package:http/http.dart' as http;
import '../240325/practice2.dart';

class TodoApi {
  Future<List<Todo>> getTodos() async {
    final http.Response response = await http.get(
        Uri.parse('https://jsonplaceholder.typicode.com/todos'));

    // response.body == Json String
    List jsonList = jsonDecode(response.body);
    return jsonList.map((e) => Todo.fromJson(e)).toList();
  }

  Future<Todo> getTodo(int id) async {
    final http.Response response = await http.get(
        Uri.parse('https://jsonplaceholder.typicode.com/todos/$id'));

    // response.body == Json String
    final Map<String, dynamic> json = jsonDecode(response.body);
    return Todo.fromJson(json);
  }
}