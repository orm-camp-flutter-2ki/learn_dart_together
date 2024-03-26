import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:learn_dart_together/240326/repository/todo/todo.dart';

abstract interface class TodoRepository {
  Future<List<Todo>> getTodos();
  Future<List<Todo>> getCompletedTodos();
}