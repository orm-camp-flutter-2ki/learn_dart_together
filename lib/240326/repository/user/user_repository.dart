// import 'dart:convert';
// import 'package:http/http.dart' as http;
import 'package:learn_dart_together/240326/repository/user/user.dart';

abstract interface class UserRepository {
  Future<List<User>> getUsers();
  Future<List<User>> getUsersTop10ByUserName();
}