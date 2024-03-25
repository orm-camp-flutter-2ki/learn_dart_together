import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:learn_dart_together/24_03_25/model/user/user_model.dart';

Future<List<UserModel>> userApi() async{
  final http.Response response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'));
  
  final userList = jsonDecode(response.body) as List;
  List<UserModel> users = userList.map((e) => UserModel.fromJson(e)).toList();

  return users;
}