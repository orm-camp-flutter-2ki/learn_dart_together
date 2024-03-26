import 'package:learn_dart_together/24_03_25/model/albumModel.dart';
import 'package:learn_dart_together/24_03_25/repository/interface/album_repository.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class AlbumRepositoryImpl implements AlbumRepository{
  @override
  Future<List<AlbumModel>> getAlbums() async {
    final jsonList = await _fetchAlbums();
    return jsonList.map((e) => AlbumModel.fromJson(e)).toList();
  }

  @override
  Future<List<AlbumModel>> getAlbumsTop10() async {
    final jsonList = await _fetchAlbums();
    return jsonList.map((e) => AlbumModel.fromJson(e)).take(10).toList();
  }

  Future<List> _fetchAlbums() async {
    final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/albums'));
    if (response.statusCode == 200 ) {
      return json.decode(response.body) as List;
    } else {
      throw Exception('통신 오류');
    }
  }
}

void main() async {
  final albums = await AlbumRepositoryImpl().getAlbumsTop10();
  print(albums);
}