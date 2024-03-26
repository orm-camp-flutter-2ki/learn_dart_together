import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:learn_dart_together/0325/model/todo_model.dart';

class TodoApi {
  Future<List<Todo>> getTodosApi() async {
    http.Response response;
    try {
      response = await http
          .get(Uri.parse('https://jsonplaceholder.typicode.com/todos'));
    } catch (error) {
      print('[Error]\n$error');
      return [];
    }

    final List json = await jsonDecode(response.body);
    return json.map((e) => Todo.fromJson(e)).toList();
  }

  Future<List<Todo>> getTodoApi(int id) async {
    http.Response response;
    try {
      response = await http
          .get(Uri.parse('https://jsonplaceholder.typicode.com/todos/$id'));
    } catch (error) {
      print('[Error]\n$error');
      // return [];
      rethrow;
    }
    final Map<String, dynamic> json = jsonDecode(response.body);
    return [Todo.fromJson(json)];
  }

  Future<List<Todo>> getTodoCompletedTodosApi(bool completed) async {
    // 쿼리 스트링 사용해보기
    http.Response response;
    try {
      response = await http.get(Uri.parse(
          'https://jsonplaceholder.typicode.com/todos?completed=$completed'));
    } catch (error) {
      print('[Error]\n$error');
      return [];
    }

    final List json = await jsonDecode(response.body);
    return json.map((e) => Todo.fromJson(e)).toList();
  }
}
