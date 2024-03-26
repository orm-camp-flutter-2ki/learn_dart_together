import 'dart:convert';
import '../model/photos.dart';
import 'package:http/http.dart' as http;


class PhotosApi {

  Future<List<Photos>> getPhotos() async {
    final http.Response response =
        await http.get(Uri.parse('https://jsonplaceholder.typicode.com/photos'));

    List jsonList = jsonDecode(response.body);
    return jsonList.map((e) => Photos.fromJson(e)).toList();
  }

  Future<Photos> getPhoto(int albumId) async {
    final http.Response response = await http
        .get(Uri.parse('https://jsonplaceholder.typicode.com/photos/$albumId'));

    final Map<String, dynamic> json = jsonDecode(response.body);
    return Photos.fromJson(json);
  }

}