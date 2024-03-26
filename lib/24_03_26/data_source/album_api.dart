import 'dart:convert';
import 'package:http/http.dart' as http;
import '../model_class/01_album_class.dart';

class AlbumApi {
  Future<List<Album>> Getalbums() async {
    final http.Response response = await http
        .get(Uri.parse('https://jsonplaceholder.typicode.com/albums'));

    final jsonList = jsonDecode(response.body) as List;
    return jsonList.map((e) => Album.fromJson(e)).toList();
  }
}
