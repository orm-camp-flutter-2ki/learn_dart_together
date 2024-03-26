import 'dart:convert';

import 'package:http/http.dart' as http;

import '../model/album.dart';

void main() async {
  List json = await AlbumApi().getAlbums();
}

class AlbumApi {
  Future<List<Album>> getAlbums() async {
    final response = await http
        .get(Uri.parse('https://jsonplaceholder.typicode.com/albums'));
    if (response.statusCode == 200) {
      List json = jsonDecode(response.body);
      List<Album> data = json.map((json) => Album.fromJson(json)).toList();
      return data;
    } else {
      throw Exception('Response 에러');
    }
  }
}
