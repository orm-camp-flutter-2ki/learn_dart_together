import 'dart:convert';

import 'package:http/http.dart' as http;

import '../data_source/album.dart';

class AlbumApi {
  Future<List<Album>> getAlbums() async {
    final response = await http
        .get(Uri.parse('https://jsonplaceholder.typicode.com/albums'));
    final jsonlist = jsonDecode(response.body) as List;
    return jsonlist.map((e) => Album.fromJson(e)).toList();
  }
  //   Future<List<Album>> getAlbumsTop10() async {
  //   final response = await http
  //       .get(Uri.parse('https://jsonplaceholder.typicode.com/photos'));
  //   final jsonlist = jsonDecode(response.body) as List;
  //   return jsonlist.map((e) => Album.fromJson(e)).toList();
  // }
}
