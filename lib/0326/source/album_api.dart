import 'package:http/http.dart' as http;
import 'package:learn_dart_together/0326/model/album_model.dart';
import 'dart:convert';

class AlbumsApi {
  Future<List<Album>> getAlbumsApi() async {
    final http.Response response;
    try {
      response = await http
          .get(Uri.parse('https://jsonplaceholder.typicode.com/albums'));
    } catch (error) {
      print('[Error]\n$error');
      return [];
    }

    final List json = await jsonDecode(response.body);
    return json.map((e) => Album.fromJson(e)).toList();
  }
}
