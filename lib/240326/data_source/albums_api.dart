import 'dart:convert';
import 'package:http/http.dart' as http;
import '../model/albums.dart';

class AlbumsApi {
  Future<List<Albums>> getAlbums() async {
    final http.Response response =
    await http.get(Uri.parse('https://jsonplaceholder.typicode.com/albums'));

    List jsonList = jsonDecode(response.body);
    return jsonList.map((e) => Albums.fromJson(e)).toList();
  }

  Future<Albums> getAlbum(int userId) async {
    final http.Response response = await http
        .get(Uri.parse('https://jsonplaceholder.typicode.com/albums/$userId'));

    final Map<String, dynamic> json = jsonDecode(response.body);
    return Albums.fromJson(json);
  }

}