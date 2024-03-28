import 'dart:convert';
import 'package:collection/collection.dart';
import 'package:http/http.dart' as http;
import '../dto/mapper/user_mapper.dart';
import '../dto/user_dto.dart';
import '../model/user.dart';

class UserApi {

  final http.Client _client;

  UserApi({http.Client? client}) : _client = client ?? http.Client();

  Future<List<User>> getUsers() async {
    final http.Response response = await _client.get(Uri.parse('https://jsonplaceholder.typicode.com/users'));
    List decodedJson = response.statusCode == 200 ?
    jsonDecode(utf8.decode(response.bodyBytes)) :
    throw Exception('Request failed with status: ${response.statusCode}.');
    return decodedJson.map((e) => UserDto.fromJson(e)).map((e) => e.toUser()).whereNotNull().toList();
  }
}