import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:learn_dart_together/orm_240326/00_data_repository/all_repository.dart';
import 'package:learn_dart_together/orm_240326/albums.dart';

class AlbumsRepositoryImpl implements AlbumsRepository {
  final urlBase = 'https://jsonplaceholder.typicode.com/albums';

  @override
  Future<List<Albums>> getAlbums() async {
    final response = await http.get(Uri.parse('$urlBase'));

    if (response.statusCode == 200) {
      List<dynamic> jsonList = jsonDecode(response.body);
      return jsonList.map((e) => Albums.fromJson(e)).toList();
    } else {
      throw Exception('실패');
    }
  }

  @override
  Future<List<Albums>> getAlbumsTop10() async {
    final response = await http.get(Uri.parse('$urlBase'));

    if (response.statusCode == 200) {
      List<dynamic> jsonList = jsonDecode(response.body);
      return jsonList.map((e) => Albums.fromJson(e)).toList();
    } else {
      throw Exception('실패');
    }
  }
}
