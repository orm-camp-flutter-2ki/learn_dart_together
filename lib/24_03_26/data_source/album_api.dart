import 'dart:convert';
import 'package:http/http.dart' as http;
import '../model/album.dart';

class AlbumApi {
  final String _url = 'https://jsonplaceholder.typicode.com/albums';

  Future<List<Album>> getAlbums() async {
    final http.Response response = await http.get(Uri.parse(_url));

    if (response.statusCode == 200) {
      List jsonList = jsonDecode(response.body);
      return jsonList.map((e) => Album.fromJson(e)).toList();
    } else {
      throw Exception('응답없음');
    }
  }

  Future<List<Album>> getAlbumTop10() async {
    final http.Response response = await http.get(Uri.parse(_url));

    if (response.statusCode == 200) {
      List jsonList = jsonDecode(response.body);
      List albumTop10 = jsonList.sublist(0, 10);
      return albumTop10.map((e) => Album.fromJson(e)).toList();
    } else {
      throw Exception('응답없음');
    }
  }
}
