import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:learn_dart_together/240326/repository/album_repository.dart';
import 'package:learn_dart_together/240326/repository/album_repository_implements.dart';

import '../model/Album.dart';

class AlbumApi {
  Future<List<Album>> getAlbums() async {
    final response = await http
        .get(Uri.parse('https://jsonplaceholder.typicode.com/albums'));

    if (response.statusCode == 200) {
      final List<dynamic> jsonData = jsonDecode(response.body);
      return jsonData.map((json) => Album.fromJson(json)).toList();
    } else {
      throw Exception('Error: ${response.statusCode}');
    }
  }

  Future<List<Album>> getAlbumsTop10() async {
    final response = await http
        .get(Uri.parse('https://jsonplaceholder.typicode.com/albums'));

    if (response.statusCode == 200) {
      final List<dynamic> jsonData = jsonDecode(response.body);
      return jsonData.map((json) => Album.fromJson(json)).toList();
    } else {
      throw Exception('Error: ${response.statusCode}');
    }
  }
}

// void main() async {
//   AlbumRepository albumRepo = AlbumRepositoryImpl();
//   final result = await albumRepo.getAlbums();
//   print(result);
// }

void main() async {
  AlbumRepository albumRepo = AlbumRepositoryImpl();
  final result = await albumRepo.getAlbumsTop10();
  print(result);
}
