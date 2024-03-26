import 'dart:convert';

import 'package:learn_dart_together/240326/model/album.dart';
import 'package:http/http.dart' as http;

class AlbumApi {
  Future<List<Album>> getAlbums() async {
    String uri = 'https://jsonplaceholder.typicode.com/albums';

    final response = await http.get(Uri.parse(uri));

    try {
      if (response.statusCode == 200) {
        final List jsonData = jsonDecode(response.body);

        return jsonData.map((e) => Album.fromJson(e)).toList();
      } else {
        throw Exception('과제 2 ERROR: HTTP Status Code ${response.statusCode}');
      }
    } catch (e) {
      return Future.error('과제 1 ERROR: $e');
    }
  }
}
