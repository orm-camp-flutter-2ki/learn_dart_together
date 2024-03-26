import 'dart:convert';

import 'package:http/http.dart' as http;

import '../model/photo.dart';

class PhotoApi {
  final String baseUrl = 'https://jsonplaceholder.typicode.com/photos';

  Future<List<Photo>> getPhotos(int albumId) async {
    final Uri url = Uri.parse('$baseUrl?albumId=$albumId');

    try {
      final response = await http.get(url);

      if (response.statusCode == 200) {
        List<dynamic> photosJson = json.decode(response.body);
        return photosJson.map((json) => Photo.fromJson(json)).toList();
      } else {
        throw Exception('실패!');
      }
    } catch (e) {
      throw Exception('실패!');
    }
  }
}

void main() async {
  PhotoApi photoApi = PhotoApi();
  final photos = await photoApi.getPhotos(1);
  print(photos);
}
