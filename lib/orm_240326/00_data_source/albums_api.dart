import 'dart:convert';

import 'package:http/http.dart' as http;

import '../model/albums.dart';

class AlbumsApi {
  final urlBase = 'https://jsonplaceholder.typicode.com/albums';

  Future<List<Albums>> getAlbums() async {
    final response = await http.get(Uri.parse(urlBase));

    if (response.statusCode == 200) {
      List<dynamic> jsonList = jsonDecode(response.body);
      return jsonList.map((e) => Albums.fromJson(e)).toList();
    } else {
      throw Exception('실패');
    }
  }

  Future<List<Albums>> getAlbumsTop10() async {
    final response = await http.get(Uri.parse('$urlBase'));

    if (response.statusCode == 200) {
      final List<dynamic> jsonList = jsonDecode(response.body) as List;
      return jsonList.map((e) => Albums.fromJson(e)).toList();
    } else {
      throw Exception('실패');
    }
  }
}
