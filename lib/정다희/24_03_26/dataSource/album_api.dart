import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:learn_dart_together/%EC%A0%95%EB%8B%A4%ED%9D%AC/24_03_26/Model/album.dart';

class AlbumApi {
  Future<List<Album>> getAlbums() async {
    final http.Response res = await http
        .get(Uri.parse("https://jsonplaceholder.typicode.com/albums"));
    if (res.statusCode == 200) {
      final List resList = jsonDecode(res.body);
      return resList.map((e) => Album.fromJson(e)).toList();
    } else {
      throw Exception('api 수신중 오류');
    }
  }

  Future<List<Album>> getTop10Album() async {
    final http.Response res = await http
        .get(Uri.parse("https://jsonplaceholder.typicode.com/albums"));
    if (res.statusCode == 200) {
      final List resList = jsonDecode(res.body);
      return resList.map((e) => Album.fromJson(e)).toList().sublist(0, 10);
    } else {
      throw Exception('api 수신중 오류');
    }
  }
}
