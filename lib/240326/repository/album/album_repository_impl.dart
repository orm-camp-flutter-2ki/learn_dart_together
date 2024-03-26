import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:learn_dart_together/240326/repository/album/album.dart';
import 'package:learn_dart_together/240326/repository/album/album_repository.dart';

class AlbumRepositoryImpl implements AlbumRepository {
  final String _apiUrl = 'https://jsonplaceholder.typicode.com/albums';

  @override
  Future<List<Album>> getAlbums() async {
    final response = await http.get(Uri.parse(_apiUrl));

    if (response.statusCode == 200) {
      List<dynamic> jsonList = jsonDecode(response.body);
      return jsonList.map((e) => Album.fromJson(e)).toList();
    } else {
      throw Exception('Failed to load albums');
    }
  }

  @override
  Future<List<Album>> getAlbumsTop10() async {
    final response = await http.get(Uri.parse(_apiUrl));

    if (response.statusCode == 200) {
      List<dynamic> jsonList = jsonDecode(response.body);
      List<Album> albums = jsonList.map((e) => Album.fromJson(e)).toList();

      // Sort albums by id
      albums.sort((a, b) => a.id.compareTo(b.id));

      // Get top 10 albums
      return albums.take(10).toList();
    } else {
      throw Exception('Failed to load albums');
    }
  }
}

Future<void> main() async {
  AlbumRepositoryImpl albumRepository = AlbumRepositoryImpl();

  try {
    // Get all albums
    List<Album> albums = await albumRepository.getAlbums();
    print('전체 앨범 목록:');
    albums.forEach((album) => print(album));

    // Get top 10 albums
    List<Album> top10Albums = await albumRepository.getAlbumsTop10();
    print('\nTop 10 앨범 목록:');
    top10Albums.forEach((album) => print(album));
  } catch (e) {
    print('오류: $e');
  }
}