import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:learn_dart_together/240326/model/albums.dart';

class AlbumsApi {
  Future<List<Albums>> getAlbums() async {
    final response = await http
        .get(Uri.parse('https://jsonplaceholder.typicode.com/albums'));
    List<Albums> data = [];

    if (response.statusCode == 200) {
      List json = jsonDecode(response.body) as List;

      List<Albums> data = json.map((json) => Albums.fromJson(json)).toList();
      return data;
    } else {
      throw Exception('Response 에러');
    }
  }
}
