import 'dart:convert';

import '../model/album.dart';

import 'package:http/http.dart' as http;

import '../repository/album_repository.dart';
import '../repository/album_repository_implements.dart';

class AlbumApi {
  final String baseUrl = 'https://jsonplaceholder.typicode.com/albums';

  Future<List<Album>> getAlbums() async {
    final response = await http.get(Uri.parse(baseUrl));

    if (response.statusCode == 200) {
      List<dynamic> albumsJson = json.decode(response.body);
      return albumsJson.map((json) => Album.fromJson(json)).toList();
    } else {
      throw Exception('실패!');
    }
  }

  Future<List<Album>> getAlbumsTop10() async {
    final response = await http.get(Uri.parse(baseUrl));

    if (response.statusCode == 200) {
      List<dynamic> albumsJson = json.decode(response.body);
      List<Album> albums =
          albumsJson.map((json) => Album.fromJson(json)).toList();
      return albums.sublist(0, 10);
    } else {
      throw Exception('실패!');
    }
  }
}

void main() async {
  AlbumRepository albumRepository = AlbumRepositoryImplements();
  final albums = await albumRepository.getAlbumsTop10();
  print(albums);
}
